<?php

namespace App\Controllers;


class Logic extends BaseController
{
	public function index()
	{
		$session = session();
		$variables = new \App\Models\Variables();
		$installed = $variables->where('name', 'installed')->find()[0]['value'];

		if($installed){
			if ($session->logged_in == TRUE) {
			$session = session();
			$this->dashboard();
		} else {
			$this->login();
		}
		}else{
			$this->setup();
		}
		
	}

	public function dashboard()
	{
		echo view('template/header');
		echo view('template/navbar');
		echo view('template/sidebar');
		echo view('dashboard');
		echo view('template/footer');
		echo view('template/jsfooter');
	}

	public function students()
	{
		$students = new \App\Models\Students();
		$variables = new \App\Models\Variables();
		$all = $students->findAll();
		$classes = explode(',', $variables->where('name', 'classes')->find()[0]['value']);

		echo view('template/header');
		echo view('template/navbar');
		echo view('template/sidebar');
		echo view('student', ['students' => $all, 'classes' => $classes]);
		echo view('template/footer');
		echo view('template/jsfooter');
	}

	public function indivStudent()
	{
		$students = new \App\Models\Students();
		$variables = new \App\Models\Variables();
		$all = $students->findAll();
		$classes = explode(',', $variables->where('name', 'classes')->find()[0]['value']);
		$session = $variables->where('name', 'session')->find()[0]['value'];
		$term = $variables->where('name', 'term')->find()[0]['value'];
		$schoolOpened = $variables->where('name', 'schoolOpened')->find()[0]['value'];

		echo view('template/header');
		echo view('template/navbar');
		echo view('template/sidebar');
		echo view('indivstudent', ['students' => $all, 'classes' => $classes, 'vars' => ['session'=>$session, 'term'=>$term, 'schoolOpened'=>$schoolOpened]]);
		echo view('template/footer');
		echo view('template/jsfooter');
	}

	public function updIndivStudent()
	{
		$incoming = $this->request->getPost();
		$Indiv = new \App\Models\Indiv();
		$res = $Indiv->insert($incoming);
		if ($res) {
			$this->msg('Student Termly data Added');
		} else {
			$this->msg('Student Termly data fail to Add');
		}
	}

	public function addstudent()
	{
		$incoming = $this->request->getPost();
		$students = new \App\Models\Students();
		$res = $students->insert($incoming);
		if ($res) {
			$this->msg('Student Added');
		} else {
			$this->msg('Student fail to Add');
		}
	}

	public function broadsheet()
	{
		$variables = new \App\Models\Variables();
		$Subjects = new \App\Models\Subjects();
		$classes = explode(',', $variables->where('name', 'classes')->find()[0]['value']);
		$subjects = explode(',', $variables->where('name', 'subjects')->find()[0]['value']);
		$subjFull = [];
		foreach ($subjects as $key => $subj) {
			$subjFull[$key]['s'] = $Subjects->where('subject_code', $subj)->find()[0]['subject'];
			$subjFull[$key]['scd'] = $subj;
		}

		echo view('template/header');
		echo view('template/navbar');
		echo view('template/sidebar');
		echo view('broadsheet', ['subjects' => $subjFull, 'classes' => $classes]);
		echo view('template/footer');
		echo view('template/jsfooter');
	}

	public function reportsheet()
	{
		$variables = new \App\Models\Variables();
		$classes = explode(',', $variables->where('name', 'classes')->find()[0]['value']);

		echo view('template/header');
		echo view('template/navbar');
		echo view('template/sidebar');
		echo view('reportsheet', ['classes' => $classes]);
		echo view('template/footer');
		echo view('template/jsfooter');
	}

	public function classreportsheet()
	{
		$variables = new \App\Models\Variables();
		$Broadsheet = new \App\Models\Broadsheet();
		$students = new \App\Models\Students();
		$Indiv = new \App\Models\Indiv();
		$clss = $this->request->getGet('subj'); 

		$classes = explode(',', $variables->where('name', 'classes')->find()[0]['value']);

			$stud = $Broadsheet->join('indiv_students', 'indiv_students.students_id = broadsheet.students_id')->where(['sessionterm'=>'21222'])->find();

		$data = [
			'studs'=>$stud,
		];


		echo view('logics');
		echo view('rs', $data);
	}

	public function editscoresheet()
	{
		$variables = new \App\Models\Variables();
		$Broadsheet = new \App\Models\Broadsheet();
		$students = new \App\Models\Students();

		$stud = [];

		$classes = explode(',', $variables->where('name', 'classes')->find()[0]['value']);
		foreach ($classes as $cls) {
			$stud[$cls] = $Broadsheet->where(['sessionterm'=>'21222', 'class' => $cls])->find();
		}

		$incoming = explode(',', $this->request->getGet('subj'));
		$data = [
			'subjects' => [['s' => $incoming[1], 'scd' => $incoming[0]]], 
			'classes' => $classes,
			'list' => $stud
		];
        $ses_data = [
            'subject' => $incoming[1],
            'subject_code' => $incoming[0]
        ];
        $session = session();
        $session->set($ses_data);
		// $Broadsheet->insert(['id'=>3,'mt'=>35]);

		echo view('template/header');
		echo view('template/navbar');
		echo view('template/sidebar');
		echo view('editboard', $data);
		echo view('template/footer');
		echo view('template/jsfooter');
	}

	public function updatescore()
	{
        $session = session();
		$Broadsheet = new \App\Models\Broadsheet();
		$variables = new \App\Models\Variables();
		$classes = explode(',', $variables->where('name', 'classes')->find()[0]['value']);
		$score_styles = explode(',', $variables->where('name', 'score_style')->find()[0]['value']);

		$incoming = $this->request->getPost();
		$id = $incoming['id'];
		$action = $incoming['action'];
        $data = '';
        foreach($classes as $class){
            foreach($score_styles as $ss){
	            if(isset($incoming[$class.'-'.$session->subject_code.'_'.$ss])){
	                $data = $class.'-'.$session->subject_code.'_'.$ss.' '. $incoming[$class.'-'.$session->subject_code.'_'.$ss];
	            }
	        }
		}
		// $data = $incoming[1];
		$column = explode('-', explode(' ', $data)[0])[1];
		$value = explode(' ', $data)[1];
		$res = $Broadsheet->update($id, [$column => $value]);
		var_dump($id,$action,$data,$res,$value,$column);
	}

	public function postlogin()
	{
		$users = new \App\Models\Users();
		$incoming = $this->request->getPost('login');
		$data = [
			'email' => $incoming['uname'],
			'password' => hash('sha256', $incoming['pass']),
		];
		$result = $users->where($data)->find();
		if ($result) {
			$ses_data = [
				'id' => $result[0]['id'],
				'lname' => $result[0]['lname'],
				'email' => $result[0]['email'],
				'level' => $result[0]['clearance'],
				'logged_in' => TRUE,
			];
			$session = session();
			$session->set($ses_data);
			$this->index();
		} else {
			$this->msg('Login Not Successful');
		}
	}

	public function msg($note)
	{
		echo $note;
	}

	// public function register()
	// {
	//     $subjects = new \App\Models\Subjects();
	// 	$data = [
	// 		'subjects' => $subjects->findAll(),
	// 	];
	// 	echo view('authheader');
	// 	echo view('register', $data);
	// 	echo view('footer');
	// }

	public function login()
	{
		echo view('template/header');
		echo view('login');
		echo view('template/jsfooter');
	}

	public function setup()
	{
		$Subjects = new \App\Models\Subjects();
		// $AVAILABLE_SUBJECTS = [
		// 	['English Language', 'en'],
		// 	['Mathematics', 'mt'],
		// 	['Arabic', 'ar'],
		// 	['Basic Science', 'bs'],
		// 	['Basic Tech', 'bu'],
		// 	['IRS', 'ir'],
		// ];
		$AVAILABLE_SUBJECTS = $Subjects->findAll();
		echo view('home', ['subjects' => $AVAILABLE_SUBJECTS]);
	}

	private function backupDB($tables = '*')
	{
		$db = mysqli_connect($_ENV['database.default.hostname'], $_ENV['database.default.username'], $_ENV['database.default.password'], $_ENV['database.default.database']);
		 if($tables == '*') { 
	        $tables = array();
	        $result = $db->query("SHOW TABLES");
	        while($row = $result->fetch_row()) { 
	            $tables[] = $row[0];
	        }
	    } else { 
	        $tables = is_array($tables)?$tables:explode(',',$tables);
	    }

	    $return = '';
	    $namer = '';
	    foreach($tables as $table){
	    	$namer = $table;
	        $result = $db->query("SELECT * FROM $table");
	        $numColumns = $result->field_count;

	        /* $return .= "DROP TABLE $table;"; */
	        $result2 = $db->query("SHOW CREATE TABLE $table");
	        $row2 = $result2->fetch_row();

	        $return .= "\n\n".$row2[1].";\n\n";

	        for($i = 0; $i < $numColumns; $i++) { 
	            while($row = $result->fetch_row()) { 
	                $return .= "INSERT INTO $table VALUES(";
	                for($j=0; $j < $numColumns; $j++) { 
	                    $row[$j] = addslashes($row[$j]);
	                    $row[$j] = $row[$j];
	                    if (isset($row[$j])) { 
	                        $return .= '"'.$row[$j].'"' ;
	                    } else { 
	                        $return .= '""';
	                    }
	                    if ($j < ($numColumns-1)) {
	                        $return.= ',';
	                    }
	                }
	                $return .= ");\n";
	            }
	        }

	        $return .= "\n\n\n";
	    }

	    $handle = fopen(utf8_encode($namer).'.sql','w+');
	    fwrite($handle,$return);
	    fclose($handle);
	    // echo "Database Export Successfully!";
	}

	private function populateBroadsheet()
	{
		$Variables = new \App\Models\Variables();
		$Students = new \App\Models\Students();
		$Broadsheet = new \App\Models\Broadsheet();

		$t = $Variables->where('name','term')->first()['value'];
		$s = $Variables->where('name','session')->first()['value'];
		$st = $s.$t;

		$studs = $Students->findAll();
		$stds = [];
		foreach ($studs as $k => $std) {
			$stds[$k] = [
				'students_id' => $std['adm'],
				'name' => $std['lname'].' '.$std['fname'],
				'class' => $std['class'],
				'sessionterm' => $st,
			];
		}
		$Broadsheet->insertBatch($stds);
		return $stds;
	}

	public function newTerm()
	{
		$Variables = new \App\Models\Variables();
		$r = $Variables->where('name','term')->first();

		// create a private function to increment term in respect to session
		// $res = $Variables->update($r['id'], ['value'=>($r['value']+1)]);
		$this->backupDB('broadsheet');
		$this->backupDB('indiv_students');

		$db = \Config\Database::connect();
		$query = $db->query('TRUNCATE TABLE broadsheet');
		$query = $db->query('TRUNCATE TABLE indiv_students');

		$this->populateBroadsheet();
		
		echo('Done');
	}

	public function postsetup()
	{
		$forge = \Config\Database::forge();
		$Variables = new \App\Models\Variables();
		$Users = new \App\Models\Users();
		$incoming = $this->request->getPost();

		// $Variables->insert(['name' => 'schoolName', 'value' => $incoming['schoolName']]);
		// $Variables->insert(['name' => 'schoolAddress', 'value' => $incoming['schoolAddress']]);

		// $subjects = explode (",", $incoming['subjects']);
		$suj = '';
		foreach($incoming['subjects'] as $k => $subj){
			if($k+1 == sizeof($incoming['subjects']) ){
			$suj = $suj.$subj;
			}else{$suj = $suj.$subj.',';}
			
		}
		var_dump($suj);
		$fields = [
			'id'          => [
				'type'           => 'INT',
				'constraint'     => 5,
				'unsigned'       => true,
				'auto_increment' => true
			],
			'title'       => [
				'type'           => 'VARCHAR',
				'constraint'     => '100',
				'unique'         => true,
			],
			'author'      => [
				'type'           => 'VARCHAR',
				'constraint'     => 100,
				'default'        => 'King of Town',
			],
			'description' => [
				'type'           => 'TEXT',
				'null'           => true,
			],
			'status'      => [
				'type'           => 'ENUM',
				'constraint'     => ['publish', 'pending', 'draft'],
				'default'        => 'pending',
			],
		];
		// $forge->addField('id');
		// foreach ($suj as $key => $sj) {
		// 	$forge->addField($sj . " varchar(100) NOT NULL");
		// };
		// $res = $forge->createTable('broadsheet');
		// var_dump($res);

		// echo view('home');
	}

	public function whm()
	{
		$user = "rayyante";
		$token = "ZQY520837NKET7O75HIJ9KCS3RRJI3FU";
		// HUIEEZ9O1BTEIL64330Z8L7BRZOQTSWR phf
		// ZQY520837NKET7O75HIJ9KCS3RRJI3FU ray

		// $query = "https://v5.gigilist.com:2087/json-api/listaccts?api.version=1";
		$query = "https://v5.gigilist.com:2087/json-api/createacct?api.version=1&username=phfogun&domain=phfogun.org&quota=3000";
		// $query = "https://41.216.184.184:2087/json-api/listaccts?api.version=1";

		$curl = curl_init();
		curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, 0);
		curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);
		curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);

		$header[0] = "Authorization: whm $user:$token";
		curl_setopt($curl, CURLOPT_HTTPHEADER, $header);
		curl_setopt($curl, CURLOPT_URL, $query);

		$result = curl_exec($curl);

		$http_status = curl_getinfo($curl, CURLINFO_HTTP_CODE);
		if ($http_status != 200) {
			echo "[!] Error: " . $http_status . " returned\n";
		} else {
			$json = json_decode($result);
			echo "[+] Current cPanel users on the system:\n";
			var_dump($json);
			// foreach ($json->{'data'}->{'acct'} as $userdetails) {
			// 	echo "\t" . $userdetails->{'user'} . "\n";
			// }
		}

		curl_close($curl);
	}

	// To Do
	// 1. Automatically Create Broadsheet table using subjects in vars
	// 2. Automatically populate Broadsheet & Indiv_Student created with student data on termly basis
	// 3. Create report sheet by class and individually
	//--------------------------------------------------------------------

}

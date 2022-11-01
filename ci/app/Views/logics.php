<?php
function grade($score)
{
	switch ($score) {
		case $score >= 90 && $score <= 100:
			return 'A+';
			break;
		case $score >= 70 && $score <= 89:
			return 'A';
			break;
		case $score >= 45 && $score <= 69:
			return 'B';
			break;
		case $score >= 35 && $score <= 44:
			return 'C';
			break;
		case $score >= 0 && $score <= 34:
			return 'D';
			break;
	}	
}

function remark($score)
{
	switch ($score) {
		case $score >= 90 && $score <= 100:
			return 'Distinction'; //Distinction
			break;
		case $score >= 70 && $score <= 89:
			return 'Excellent';
			break;
		case $score >= 50 && $score <= 69:
			return 'V. Good';
			break;
		case $score >= 35 && $score <= 49:
			return 'Pass';
			break;
		case $score >= 0 && $score <= 34:
			return 'Fair';
			break;
	}
}

function per($score)
{
	$total = (($score)/1200)*100;
	return ceil($total) ;
}

function genRemark($score)
{
	if($score > 480){
		return 'PASSED';
	}else{
		return 'FAILED';
	}
}

?>
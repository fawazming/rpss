<div class="page-body">
    <!-- Container-fluid starts-->
    <div class="container-fluid py-3">
        <div class="row">
            <div class="col-sm-12 col-md-8 col-lg-8">
                <div class="card">
                    <div class="card-header">
                        <h5>Student Registration</h5><span>Fill the required field to register new
                            student</span>
                    </div>
                    <div class="card-body">
                        <div class="container">
                            <form action="<?=base_url('student')?>" method="post">
                                <fieldset class="mb-3 row">
                                    <div class="col-sm-1-12">
                                        <div class="mb-3">
                                            <label for="inputName" class="col-sm-1-12 col-form-label">Admission Number & Class</label>
                                            <div class="row">
                                            <div class="col-sm-1-12 col-md-6">
                                                <input type="tel" class="form-control" name="adm" placeholder="ADM Number" required>
                                            </div>
                                            <div class="col-sm-1-12 col-md-6">
                                                  <select class="form-control" name="class">
                                                    <option value="">Select a Class</option>
                                                    <?php foreach ($classes as $class) : ?>
                                                    <option value="<?=$class?>"><?=$class?></option>
                                                    <?php endforeach; ?>
                                                  </select>
                                            </div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label class="col-sm-1-12  col-form-label">Name
                                                of Student</label>
                                            <div class="row">
                                                <div class="col-sm-1-12 col-md-6">
                                                    <input type="text" class="form-control" name="lname" placeholder="Lastname/Surname" required>
                                                </div>
                                                <div class="col-sm-1-12 col-md-6">
                                                    <input type="text" class="form-control" name="fname" placeholder="First Name" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <label for="inputName" class="col-sm-1-12 col-form-label">Guardian Phone & Date of Birth
                                            </label>
                                            <div class="row">
                                                <div class="col-sm-1-12 col-md-6">
                                                    <input type="tel" class="form-control" name="phone" placeholder="+234" required>
                                                </div>
                                                <div class="col-sm-1-12 col-md-6">
                                                    <input type="date" class="form-control" name="dob" required>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="mb-3 row">
                                    <div class="col-sm-10">
                                        <button type="reset" class="btn btn-primary">Reset</button>
                                        <button type="submit" class="btn btn-primary">Submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-4 col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div class="list-group">
                            <?php foreach ($students as $key => $student) : ?>
                                <button type="button" class="list-group-item list-group-item-action"><?= $student['lname'] . ' ' . $student['fname'] . ' of ' . $student['class'] ?> </button>
                            <?php endforeach; ?>
                        </div>
                        <?php foreach ($classes as $class) : ?>
                            <div class="accordion mb-3" id="<?= $class ?>Example">
                                <div class="accordion-item">
                                    <h2 class="accordion-header" id="<?= $class ?>Heading">
                                        <button class="accordion-button fw-bold h5 collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#<?= $class ?>Collapse" aria-expanded="true" aria-controls="<?= $class ?>Collapse">
                                            <?= $class ?> Students
                                        </button>
                                    </h2>
                                    <div id="<?= $class ?>Collapse" class="accordion-collapse collapse" aria-labelledby="<?= $class ?>Heading" data-bs-parent="#<?= $class ?>Example">
                                        <div class="accordion-body">

                                        </div>
                                    </div>
                                </div>

                            </div>
                        <?php endforeach; ?>

                    </div>
                </div>
            </div>
            <!-- Container-fluid Ends-->
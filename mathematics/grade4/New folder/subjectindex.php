<?php
    session_start();

    if(!$_SESSION['id']){
        header('location:teacher_login.php');
    }


?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,minimum-scale=1">
    <title>Subjects</title>
    <link rel="stylesheet" href="subject.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    <link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
  />
</head>
<body>
    <input type="checkbox" name="" id="sidebar-toggle">
    <div class="sidebar">
        <div class="sidebar-brand">
            <div class="brand-flex">
                <img src="img/logo.png" width="50px" alt="">

                <div class="brand-icons">
                    <!-- <span class="las la-bell"></span> -->
                    <a href="../../../teacher_mailbox/mailbox.html"><span class="las la-bell"></span></a>
                </div>
            </div>
        </div>

        <div class="sidebar-main">
            <div class="sidebar-user">
                <a href="../../../teacher_profile.php"><img src="img/teacher2.jpg"  alt=""></a>
                 <div>
                <h3><?php echo ucfirst($_SESSION['first_name']); ?>&nbsp;<?php echo ucfirst($_SESSION['last_name']); ?></h3>
                <span><?php echo ($_SESSION['email']); ?></span>
            </div>
         </div>

         <div class="sidebar-menu">
               
            <ul>
                <!-- <li><a href="">
                    <span class="las la-home"></span>Home
                </a></li> -->
                <li><a href="../../../teacher_dashboard.php">
                    <span class="las la-tachometer-alt"></span>Dashboard
                </a></li>

                <li><a href="../../../teacher_subjects/mathematics/grade4/subjectindex.php">
                    <span class="las la-book"></span>Subjects
                </a></li>

                <li><a href="../../../mystudents/mystudents.php"><span class="las la-users"></span>My Students</a></li>

                <li><a href="../../../teacher_quiz/quiz.php"><span class="las la-check-circle"></span>Tasks</a>
                </li>
                 
                 <li><a href="../../../analytics/progressreport.php"><span class="las la-chart-pie"></span>Analytics</a></li>

                 <li><a href="../../../teacher_calendar/calendar.php">
                     <span class="las la-calendar"></span>Calendar
                 </a></li>
                 
                 <li>
                 <a href="../../../teacher_discussion/discussion.php">
                    <span class="las la-users"></span>Discussion
                </a></li>

                <li>
                    <a href="../../../teacher_exhibition.php">
                       <span class="las la-images"></span>Exhibition
                   </a></li>


                
                <li><a href="../../../ChatApp/login.php"><span class="las la-comments"></span>Chat</a></li>
                

                <li><a href="../../../teacher_finance/finance.html">
                    <span class="las la-credit-card"></span>Finance
                </a></li>

                <li><a href="../../../skole_welcome_page.html">
                    <span class="fas fa-sign-out-alt"></span>Logout
                    </a></li>

             </ul>


        </div>
    </div>

</div>


        <div class="main-content" >
            <header>
                <div class="menu-toggle">
                    <label for="sidebar-toggle">
                        <span class="las la-bars"></span>
                    </label>
                </div>
                

                <div class="header-icons">
                    <!-- <span class="las la-search"></span>
                    <span class="las la-bookmark"></span>
                    <span class="las la-sms"></span> -->
                </div>
            </header>

            <main>
                <div class="page-header">
                    <div>
                        <h3>
                            Subjects
                        </h3>
                        <!-- <small>
                            Monitor dfdskfjnsgkjdfkb dfbm 
                        </small> -->
                    </div>
                 
                    <div class="header-actions">
                        <!-- <button>
                            <span class="las la-file-export"></span>Export
                        </button> -->

                        <!-- <button class="setting">
                            <span class="las la-tools"></span>Settings
                        </button> -->
                        <a href="../../../teacher_syllabus.php" class="hbtn hb-fill-right-rev-bg-br"><span class="las la-tools"></span>Syllabus</a>

                    </div>
                  
                </div>
                <div><h1>Mathematics</h1></div>  
                <div class="float-container">

                    <div class="float-child1">


                        <div class="grade">
                            <div class="g1"><a href="../grade4/subjectindex.php">Grade 1</a></div>
                            <div class="g2"><a href="../grade5/subjectindex.php">Grade 2</a></div>
                        </div>
                        
                        <div group1>
                        <div class="header">
                            <div class="announcement">
                            <!-- <img src="img/maps-and-flags 1.png"> -->
                            <!-- <p><a href=""><b><a href="../../../teacher_announcement.php">Announcements</a></b></a></p> -->
                            </div>
                        </div>

                        <div><img scr="img/Line 1.png"></div>
                        </div>
                        <hr style="margin-top: 5px;">
                        <div group2>
                            <div class="numbers">
                                <p>Numbers</p>
                                <div class="numbers1">
                                  <img src="img/files 1.png">
                                  <p><a href="">Number PDF</a>
                                  <span>
                                   <input class="checkbox-effectcheckbox-effect-2" id="hide4" type="checkbox" value="hide" name="hide000"/>
                                  <label for="hide">&nbsp;Hidden from students</label></span></p>
                                 
                                  </div>
                              
                                <div class="numbers1">
                                    <img src="img/Vector.png">
                                    <p><a href="">Number Video</a>
                                        <span> <input class="checkbox-effectcheckbox-effect-2" id="hide0000" type="checkbox" value="hide" name="hide00"/>
                                            <label for="hide">&nbsp;Hidden from students</label> </span>
                                    </p>
                                  </div>

                                  <div class="numbers1">
                                    <img src="img/GROUP.png">
                                    <p><a href="">Number PPT with audio clip</a>    <span> <input class="checkbox-effectcheckbox-effect-2" id="hide0" type="checkbox" value="hide" name="hide"/>
                                        <label for="hide">&nbsp;Hidden from students</label> </span></p>
                                  </div><br>
                                  <a href="../../../teacher_content_quiz_view.php"><b>Quiz</b></a>
                                  <button id="up" style="margin-left: 1200px;"><a href="../../../teachercontent_upload.php">Upload</a></button>
                            </div>
    
                            <!-- <div><img scr="img/Line 1.png"></div> -->
                           
                        </div>
                        <hr style="margin-top: 5px">
                        <div group3>
                            <div class="numbers">
                                <p>Addition</p>
                                <div class="numbers1">
                                  <img src="img/files 1.png">
                                  <p><a href="">Addition PDF</a>    <span> <input class="checkbox-effectcheckbox-effect-2" id="hide1" type="checkbox" value="hide" name="hide"/>
                                    <label for="hide">&nbsp;Hidden from students</label></span></p>
                                </div>

                                <div class="numbers1">
                                    <img src="img/Vector.png">
                                    <p><a href="">Addition Video</a>    <span>  <input class="checkbox-effectcheckbox-effect-2" id="hide2" type="checkbox" value="hide" name="hide"/>
                                        <label for="hide">&nbsp;Hidden from students</label></span></p>
                                  </div>

                                  <div class="numbers1">
                                    <img src="img/GROUP.png">
                                    <p><a href="">Addition PDF with audio clip</a>    <span> <input class="checkbox-effectcheckbox-effect-2" id="hide3" type="checkbox" value="hide" name="hide"/>
                                        <label for="hide">&nbsp;Hidden from students</label> </span></p>
                                  </div>
                                  <a href="../../../teacher_content_quiz_view.php"><b>Quiz</b></a>
                                  <button id="up" style="margin-left: 1200px;"><a href="../../../teachercontent_upload.php">Upload</a></button>
                            </div>
    
                            <div><img scr="img/Line 1.png"></div>
                        </div>
                        <hr>
                        <div group4>
                            <div class="numbers">
                                <p>Multiplication</p>
                                <div class="numbers1">
                                  <img src="img/files 1.png">
                                  <p><a href="">Multiplication PDF</a>     <span> <input class="checkbox-effectcheckbox-effect-2" id="hide99" type="checkbox" value="hide" name="hide"/>
                                    <label for="hide">&nbsp;Hidden from students</label> </span></p>
                                </div>

                                <div class="numbers1">
                                    <img src="img/Vector.png">
                                    <p><a href="">Multiplication Video</a>     <span> <input class="checkbox-effectcheckbox-effect-2" id="hide9" type="checkbox" value="hide" name="hide"/>
                                        <label for="hide">&nbsp;Hidden from students</label> </span></p>
                                  </div>

                                  <div class="numbers1">
                                    <img src="img/GROUP.png">
                                    <p><a href="">Multiplication PDF with audio clip</a>     <span> <input class="checkbox-effectcheckbox-effect-2" id="hide10" type="checkbox" value="hide" name="hide"/>
                                        <label for="hide">&nbsp;Hidden from students</label> </span></p>
                                  </div>
                                  <a href="../../../teacher_content_quiz_view.php"><b>Quiz</b></a>
                                  <button id="up" style="margin-left: 1200px;"><a href="../../../teachercontent_upload.php">Upload</a></button>
                            </div>
    
                            <div><img scr="img/Line 1.png"></div>
                        </div>
                        <hr>
                        <div group5>
                            <div class="numbers">
                                <p>Substraction</p>
                                <div class="numbers1">
                                  <img src="img/youtube 1.png">
                                  <p><a href="">https://www.youtube.com/watch?v=qM7B2nwpV1M</a>     <span> <input class="checkbox-effectcheckbox-effect-2" id="hide399" type="checkbox" value="hide" name="hide"/>
                                    <label for="hide">&nbsp;Hidden from students</label> </span></p>
                                </div>
                                <a href="../../../teacher_content_quiz_view.php"><b>Quiz</b></a>
                                <button id="up" style="margin-left: 1200px;"><a href="../../../teachercontent_upload.php">Upload</a></button>
                            </div>
    
                            <div><img scr="img/Line 1.png"></div>
                        </div>


                    </div>  
                    
                    <div class="float-child2">
                          
                      <div class="green"><div class="subject-list">Subject List</div>
                        <div class="btn-group">
                            <a href="../../mathematics/grade4/subjectindex.php"><button style="background-color: #5850ec;" ><p >Mathematics</p></button></a>
                            <a href="../../sinhala/grade4/subjectindex.php"><button><p>Sinhala</p></button></a>
                            <a href="../../english/grade4/subjectindex.php"><button><p>English</p></button></a>
                            <a href="../../aesthetic/grade4/subjectindex.php"><button><p>Aesthetic</p></button></a>
                        </div>
                    </div>
                   
                </div>
                    
                </div>
                
            </main>

                
            </div>
        <label for="sidebar-toggle" class="body-label"></label>

        
            
        
</body>
</html>
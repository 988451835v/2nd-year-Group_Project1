<?php
    session_start();

    if(!$_SESSION['id']){
        header('location:teacher_login.php');
    }


    include("dp.php");

    if(isset($_POST['upload'])){
    // $name=$_FILES['file'];
    // echo "<pre>";
    // print_r($name);
    // exit();

    $file_name=$_FILES['file']['name'];
    $file_type=$_FILES['file']['type'];
    $temp_name=$_FILES['file']['tmp_name'];
    $file_size=$_FILES['file']['size'];
    $file_destination="upload/" .$file_name;

    if(move_uploaded_file($temp_name,$file_destination)){
        $q="INSERT INTO video(name,gid,sid,uid,content_type) VALUES ('$file_name','G1','S1','$_POST[uid]','$_POST[content_type]')";

        if(mysqli_query($conn,$q)){
            $success="\n\n\ncontent uploaded successfully";
            echo '<script> alert("Completed")</script>';
        }
        else{
            $failed="Something went wrong";
            echo '<script> alert("Completed")</script>';

        }
    }
    else{
        $msz = "\n\n\n please select a video to upload";
    }
}

// if(isset($_POST['upload'])){
  
//     $query = "UPDATE video SET uid='$_POST[uid]'";
//     // $query = "UPDATE members SET first_name='$_POST[first_name]', last_name='$_POST[last_name]' where email='$_POST[email]'";
    
//     $query_run = mysqli_query($conn,$query);
  
//     if( $query_run){
//         echo '<script> alert("Completed")</script>';
  
//     }else{
//         echo '<script> alert("Completed")</script>';
  
//     }
//   }

//   if(isset($_POST['upload'])){
//     $query="INSERT INTO video(gid,sid) VALUES ('G1','S1')";
//     $query_run = mysqli_query($conn,$query);
  
//   }

  




?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,minimum-scale=1">
    <title>Upload qualifications</title>
    <link rel="stylesheet" href="upload.css">
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
                <img src="../teacher_images/logo.png" width="50px" alt="">

                <div class="brand-icons">
                    <!-- <span class=""></span> -->
                  <a href="../teacher_upload qualifications/uploadqualification.php">  <span class="las la-bell"></span></a>
                </div>
            </div>
        </div>

        <div class="sidebar-main">
            <div class="sidebar-user">
                <a href="../teacher_profile.php"><img src="../teacher_images/teacher2.jpg"  alt=""></a>
                 <div>
                 <h3><?php echo ucfirst($_SESSION['first_name']); ?>&nbsp;<?php echo ucfirst($_SESSION['last_name']); ?></h3>
                <span><?php echo ($_SESSION['email']); ?></span>
            </div>
         </div>

         <div class="sidebar-menu">
               
               <ul>
                 
                  <li><a href="../teacher_dashboard.php">
                      <span class="las la-tachometer-alt"></span>Dashboard
                  </a></li>

                  <li><a href="../teacher_subjects/mathematics/grade4/subjectindex.php">
                      <span class="las la-book"></span>Subjects
                  </a></li>

                  <li><a href="../mystudents/mystudents.php"><span class="las la-users"></span>My Students</a></li>

                  <li><a href="../mystudents/mystudents.php"><span class="las la-check-circle"></span>Tasks</a>
                  </li>
                   
                   <li><a href="../analytics/progressreport.php"><span class="las la-chart-pie"></span>Analytics</a></li>

                   <li><a href="../teacher_calendar/calendar.php">
                       <span class="las la-calendar"></span>Calendar
                   </a></li>
                   
                   <li>
                   <a href="../teacher_discussion/discussion.php">
                      <span class="las la-users"></span>Discussion
                  </a></li>

                  <li>
                   <a href="../teacher_exhibition.php">
                      <span class="las la-images"></span>Exhibition
                  </a></li>

              
                  <li><a href="../teacher_chat.php"><span class="las la-comments"></span>Chat</a></li>
                  

                  <li><a href="../teacher_finance/finance.php">
                      <span class="las la-credit-card"></span>Finance
                  </a></li>


                  <li><a href="../skole_welcome_page.html">
                  <span class="fas fa-sign-out-alt"></span>Logout
                  </a></li>

               </ul>



      </div>
    </div>

</div>


        <div class="main-content">
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
                    <div class="dpandname">
                       
                           <p id="head1">Mathematics</p><br>
                           <p id="head2">Grade 1</p>
                          

                        
                    </div>
                 
                    <div class="header-actions">
                        <!-- <a href="#" class="hbtn hb-fill-right-rev-bg-br"><span class="las la-tools"></span>Edit Profile</a> -->

                    </div>
                  
                </div>
                
                <div class="container">
                    <p id="head"><b>Upload Content</b></p>

                    <div class="upload">
                    <div class="container mt-3">
                           
                            <div class="col-lg-8 m-auto">
                            <form action="upload.php" method="post" enctype="multipart/form-data">
                            <div class="form-group">
                                <label><strong>Unit Number</strong><p><input type="text" name="uid" placeholder="Unit No"></p></label>
                                <br>
                                <input type="file" name="file" class="form-control">
                                <input type="radio" name="content_type" value="Pdf"/>PDF
                                <input type="radio" name="content_type" value="Video"/>Video
                                <input type="radio" name="content_type" value="PPT"/>PPT
                                

                            </div>

                        <?php if(isset($success)){?>
                        <div class="alert alert-success">
                        <?php echo $success;?>
                        </div>
                        <?php }?>
                        <?php if(isset($failed)) {?>
                        <div class="alert alert-danger">
                                <?php echo $failed;?>
                        </div>
                        <?php }?>
                        

                        <?php if(isset($msz)){
                            ?>
                            <div class="alert alert-danger">
                                <?php echo $msz;?>
                            </div>


                        <?php } ?>
                        <div class="btns2">
                        <input type="submit" id="btn1" name="upload" value="Upload" class="btn btn-success ml-3">
                        <input type="submit" id="btn2" name="cancel" value="cancel" class="btn btn-success ml-3">
                        </div>
                        
</form>
</div>
                    </div>
                    
                    <div class="buttons2">
                        <!-- <button id="btn1" type="button">
                            Save
                        </button> -->
                        <!-- <button id="btn2" type="button">
                            Delete
                        </button> -->
                    </div>
     
                    
                </div>
                
            </main>

                
            </div>
        <label for="sidebar-toggle" class="body-label"></label>

        
            
        
</body>
</html>
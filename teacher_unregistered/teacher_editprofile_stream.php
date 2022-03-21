<?php
session_start();
  
if(!$_SESSION['id']){
    header('location:teecher_login.php');
}

$connection = mysqli_connect("localhost","root","");
$db = mysqli_select_db($connection,'demo');



if(isset($_POST['update'])){
    $date = date('Y-m-d H:i:s');
    $query = "UPDATE teacher SET NIC='$_POST[NIC]', mobile='$_POST[mobile]' where teacher_id = '$_SESSION[id]'";
    // $query = "UPDATE members SET first_name='$_POST[first_name]', last_name='$_POST[last_name]' where email='$_POST[email]'";
    
    $query_run = mysqli_query($connection,$query);

    // if( $query_run){
    //     echo '<script> alert("Your Profile Updated")</script>';

    // }else{
    //     echo '<script> alert("Profile Not Updated")</script>';

    // }

  $date = date('Y-m-d H:i:s');
  $query = "UPDATE teacher_qualification SET qualification='$_POST[qualification]' where teacher_id = '$_SESSION[id]'";
  // $query = "UPDATE members SET first_name='$_POST[first_name]', last_name='$_POST[last_name]' where email='$_POST[email]'";
  
  $query_run = mysqli_query($connection,$query);

  if( $query_run){
      echo '<script> alert("Your Profile is Updated")</script>';

  }else{
      echo '<script> alert("Your Profile is not Updated ")</script>';

  }
}

              
$sql= "SELECT name FROM images where  member_id=$_SESSION[id] ";
$query_run = mysqli_query($connection, $sql);
  if($result = mysqli_query($connection,$sql)){
            if(mysqli_num_rows($result) > 0){
                  while($row = mysqli_fetch_array($result)){
                      $image = $row['name'];
                      $image_src = "upload/".$image;
          

                      }
            }
  }                   

          
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,minimum-scale=1">
    <title>Edit Profile</title>
    <link rel="stylesheet" href="teacher_editprofile.css">
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
                <img src="teacher_images/logo.png" width="50px" alt="">

                <div class="brand-icons">
                    <!-- <span class="las la-bell"></span> -->
                    <a href="./teacher_editprofile.php"><span class="las la-bell"></span></a>
                </div>
            </div>
        </div>

        <div class="sidebar-main">
            <div class="sidebar-user">
                <a href="./teacher_editprofile.php"><img src="teacher_images/unreg_teacher-removebg-preview.png"  alt="">
                 <div>
                <h3><?php echo ucfirst($_SESSION['first_name']); ?>&nbsp;<?php echo ucfirst($_SESSION['last_name']); ?></h3>
                <span><?php echo ucfirst($_SESSION['email']); ?></span>
            </div>
         </div>

         <div class="sidebar-menu">
               
          <ul>
            <!-- <li><a href="">
                <span class="las la-home"></span>Home
            </a></li> -->
            <li><a href="./teacher_terms.html">
                <span class="las la-tachometer-alt"></span>Rules and Regulations
            </a></li>

            <li><a href="./teacher_syllabus.php">
                <span class="las la-book"></span>Syallabus 
            </a></li>

            <li><a href="./teacher_editprofile.php"><span class="las la-users"></span>Profile</a></li>

             <li><a href="./teacher_login.php">
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

                 

                    <div style="margin-left: 100px;" class="dpandname">

                           <h1 style="margin-top: 40px;margin-left:360px;font-size:40px;" id="p1" id="p1"><?php echo ucfirst($_SESSION['first_name']); ?>&nbsp;<?php echo ucfirst($_SESSION['last_name']); ?></h1>
                           <h2 style="margin-top: 0px;margin-left:390px;"> <?php echo ucfirst($_SESSION['email']); ?> </h2>
                        
                        
                    </div>
                 
                   
                </div>
                
                <div  style="background-color: #f2f2f2;margin-left:0px;height:auto " class="container ">
                   <div style="height:auto;margin-left:70px" class="formdiv">
                    <form action="" method="POST">
                    
                        
                        <div  class="row  ">
                          <div class="col-25">
                            <label for="subject">Stream 1</label>
                          </div>
                          <div class="col-75">
                          <table style="border: 2px solid grey; width:675px;">
                          
                          <form action="" method="post">
                            <select name="Grade">
                            <option value="" disabled selected>Choose option</option>
                            <option value="G1">Grade1</option>
                            <option value="G2">Grade2</option>
                            <option value="G3">Grade3</option>
                            <option value="G4">Grade4</option>
                            <option value="G5">Grade5</option>
                            </select>

                            <select name="Subject">
                            <option value="" disabled selected>Choose option</option>
                            <option value="S1">Mathematics</option>
                            <option value="S2">English</option>
                            <option value="S3">Sinhala</option>
                            <option value="S4">Aesthetic</option>
                            <option value="S5">Environmental Science</option>
                            </select>

                            <input style="margin-left:450px" type="submit" name="submit" class="choose"  value="Check">
                            </form>
                            <?php
                            $date = date('Y-m-d H:i:s');
                            if(isset($_POST['submit'])){
                                    if(!empty($_POST['Grade'])) {
                                        if(!empty($_POST['Subject'])) {
                                            $selected = $_POST['Grade'];
                                            $selected2 = $_POST['Subject'];
                                            echo 'You have chosen: ' . $selected;
                                            echo 'You have chosen: ' . $selected2;

                                                
                                                   
                                                        $connection = mysqli_connect("localhost","root","","demo");
                                                        $query = "SELECT count(teacher_id) AS teacher_count  FROM teacher_grade_subject  where gid='$selected' AND sid='$selected2'  ";
                                                        if($result = mysqli_query($connection,$query)){
                                                          if(mysqli_num_rows($result) > 0){
                                                                 while($row = mysqli_fetch_array($result)){
                                                                     $count = $row['teacher_count'];

                                                         
                                     
                                                                     }
                                                           }
                                                       }  
                                                       if($count<10){
                                                        $query = " INSERT INTO `teacher_grade_subject` ( `teacher_id`,`gid`,`sid`, `updated_date`) VALUES ($_SESSION[id],'$selected','$selected2', '$date');";
                                                        $query_run = mysqli_query($connection,$query);
                                                       }
                                                       else{
                                                         echo "No available vacancies for your choice";
                                                       }
                                                           
                                                            
                                                          
                                                            }
                                                          }}
                                                            ?>
                          </table>
                          </div>
                        </div> 
                        <br> 

                        <div  class="row  ">
                          <div class="col-25">
                            <label for="subject">Stream 2</label>
                          </div>
                          <div class="col-75">
                          <table style="border: 2px solid grey; width:675px;">
                          
                          <form action="" method="post">
                            <select name="Grade">
                            <option value="" disabled selected>Choose option</option>
                            <option value="G1">Grade1</option>
                            <option value="G2">Grade2</option>
                            <option value="G3">Grade3</option>
                            <option value="G4">Grade4</option>
                            <option value="G5">Grade5</option>
                            </select>

                            <select name="Subject">
                            <option value="" disabled selected>Choose option</option>
                            <option value="S1">Mathematics</option>
                            <option value="S2">English</option>
                            <option value="S3">Sinhala</option>
                            <option value="S4">Aesthetic</option>
                            <option value="S5">Environmental Science</option>
                            </select>

                            <input style="margin-left:450px" type="submit" name="submit" class="choose"  value="Check">
                            </form>
                            <?php
                            $date = date('Y-m-d H:i:s');
                            if(isset($_POST['submit'])){
                                    if(!empty($_POST['Grade'])) {
                                        if(!empty($_POST['Subject'])) {
                                            $selected = $_POST['Grade'];
                                            $selected2 = $_POST['Subject'];
                                            echo 'You have chosen: ' . $selected;
                                            echo 'You have chosen: ' . $selected2;

                                                
                                                   
                                                        $connection = mysqli_connect("localhost","root","","demo");
                                                        $query = "SELECT count(teacher_id) AS teacher_count  FROM teacher_grade_subject  where gid='$selected' AND sid='$selected2'  ";
                                                        if($result = mysqli_query($connection,$query)){
                                                          if(mysqli_num_rows($result) > 0){
                                                                 while($row = mysqli_fetch_array($result)){
                                                                     $count = $row['teacher_count'];

                                                         
                                     
                                                                     }
                                                           }
                                                       }  
                                                       if($count<10){
                                                        $query = " INSERT INTO `teacher_grade_subject` ( `teacher_id`,`gid`,`sid`, `updated_date`) VALUES ($_SESSION[id],'$selected','$selected2', '$date');";
                                                        $query_run = mysqli_query($connection,$query);
                                                       }
                                                       else{
                                                         echo "No available vacancies for your choice";
                                                       }
                                                           
                                                            
                                                          
                                                            }
                                                          }}
                                                            ?>
                          </table>
                          </div>
                        </div> 

                      </form>
                   </div>
                    
                </div>
                
            </main>

                
            </div>
        <label for="sidebar-toggle" class="body-label"></label>

        
            
        
</body>
</html>
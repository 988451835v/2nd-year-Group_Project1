<?php
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
        $q="INSERT INTO video(name) VALUES ('$file_name')";

        if(mysqli_query($conn,$q)){
            $success="video uploaded successfully";
        }
        else{
            $failed="Something went wrong";
        }
    }
    else{
        $msz = "please select a video to upload";
    }
}

?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1,minimum-scale=1">
    <title>TeacherUpload</title>
    <link rel="stylesheet" href="teacherprofile.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>

<body>
    <div class="container mt-3">
        <h1>Uploading video</h1>
        <div class="col-lg-8 m-auto">
        <form action="upload.php" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label><strong>Upload Video</strong></label>
            <input type="file" name="file" class="form-control">
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
    <input type="submit" name="upload" value="Upload" class="btn btn-success ml-3">
    
</form>
</div>

</body>
</html>



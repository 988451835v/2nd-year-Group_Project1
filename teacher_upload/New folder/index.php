<!DOCTYPE html>
<html>
    <head>
        <title>Display </title>
    </head>


    <body>
        <div class="container mt-3 mb -3">
            <h1>Display</h1>
            <hr/>
            <a href="upload.php" class="btn btn-primary mt-3">Upload a NEw video</a>
        <div class="row">
            <?php
                include("dp.php");

                $q="SELECT * FROM video";
                $query=mysqli_query($conn,$q);
                while($row=mysqli_fetch_array
               ($query)){
                    ?>
                    <div class="col-md-4">
                        <video id="myVideo" width="100%" controls>
                            <source src="<?php echo 'upload/' .$row['name'];?>">
                        </video>
                    </div>
                    <?php }
                    ?>
                
        </div>
       
    </body>
</html>
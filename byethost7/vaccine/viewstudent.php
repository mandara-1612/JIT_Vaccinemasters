<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Details</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="table.css">
    

    <style type="text/css">
	body {
   background-color:AliceBlue;
	background-position: center;
	 background-size: cover;
	 position: relative;
	   height:auto;
	   width:100%
     
      
    }  
      button{
        transition: 1.5s;
      }
      button:hover{
        background-color:#616C6F;
        color: white;
      }
	  		
#nav {
  
  background-color:rgba(0,0,0,0.1);
  color: white;
  display: flex;
  flex-direction: row;
  align-items: center;
 justify-content: space-between;
}
#navlinks {
  margin-right: 10px;
  float: right;
  text-decoration: none;
}

#navlinks a {
  color: #fff;
  font-size: large;
  margin: 30px;
  text-decoration: none;
}
    </style>
</head>

<body>
<?php
     require_once '../configuration.php';
    $sql = "SELECT * FROM students";
    $result = mysqli_query($conn,$sql);
?>

  <div id="nav">
        <div id="heading">
                <img src="Images/canvas6.jpeg" alt="no image" width="200px" height="100px" style="float:left">
         </div>       
        <div id="navlinks">
                <a href="index.html">Home</a>
        </div>
	
        </div>
		

<div class="container">
        <h2 class="text-center pt-4">SIXTH SEMESTER CSE</h2>
        <br>
            <div class="row">
                <div class="col">
                    <div class="table-responsive-sm">
                    <table class="table table-hover table-sm table-striped table-condensed table-bordered">
                        <thead>
                            <tr>
                            <th scope="col" class="text-center py-2">Photos</th>
                            <th scope="col" class="text-center py-2">USN</th>
                            <th scope="col" class="text-center py-2">NAME</th>
                            <th scope="col" class="text-center py-2">First Dose date</th>
                            <th scope="col" class="text-center py-2">Second Dose date</th>
							<th scope="col" class="text-center py-2">Insert</th>
                            
                            </tr>
                        </thead>
                        <tbody>
                <?php 
                    while($rows=mysqli_fetch_assoc($result)){
                ?>
                    <tr><td class="py-2"><?php echo "<img src='{$rows['img_dir']}' width='200px' height='200px' />" ?></td>
                        <td class="py-2" ><?php echo $rows['USN'] ?></td>
                        <td class="py-2"><?php echo $rows['NAME']?></td>
                        <td class="py-2"><?php echo $rows['FIRST_VAC_DATE']?></td>
                        <td class="py-2"><?php echo $rows['SECOND_VAC_DATE']?></td>
                       <td><a href="../project-hack-2/editStudent.php?USN= <?php echo $rows['USN'] ;?>"> <button type="button" class="btn">Insert</button></a></td> 
                         
                    </tr>
                <?php
                    }
                ?>
            
                        </tbody>
                    </table>
                    </div>
                </div>
            </div> 
         </div>
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> 
</body>
</html>
<?php
include('../../admin/config/conn.php');
$email=$_GET['email'];
$sql="SELECT email FROM tbl_dangky WHERE email='$email';";
$row = mysqli_query($con,$sql);
$count = mysqli_num_rows($row);
if($count > 0){
    echo "Tên đăng nhập đã tồn tại!";
}
else{
    echo "";
}
?>
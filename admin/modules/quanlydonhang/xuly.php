<?php
    include('../../config/conn.php');
    if(isset($_GET['code'])){
        $status = 0;
        $code = $_GET['code'];
        $sql = mysqli_query($con,"UPDATE tbl_cart SET cart_status='$status' WHERE code_cart='$code'");
        header('location:../../index.php?action=quanlydonhang&query=lietke');
    }
?>

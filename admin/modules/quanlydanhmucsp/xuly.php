<?php
include('../../config/conn.php');
$tenloaisp = $_POST['tendanhmuc'];
$thutu = $_POST['thutu'];
if(isset($_POST['themdanhmuc'])){
    //them
    $sql_them = "INSERT INTO tbl_danhmuc (tendanhmuc,thutu) VALUE('$tenloaisp','$thutu')";
    //echo $sql_them;
    mysqli_query($con,$sql_them);
    header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');
}elseif(isset($_POST['suadanhmuc'])){
    //sua
    $sql_update = "UPDATE tbl_danhmuc SET tendanhmuc='$tenloaisp', thutu='$thutu' WHERE id='$_GET[iddanhmuc]' ";
    mysqli_query($con,$sql_update);
    header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');

}else{
    $id=$_GET['iddanhmuc'];
    $sql_xoa = "DELETE FROM tbl_danhmuc WHERE id='$id'";
    mysqli_query($con,$sql_xoa);
    header('Location:../../index.php?action=quanlydanhmucsanpham&query=them');
}
?>
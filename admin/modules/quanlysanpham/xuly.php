<?php
include('../../config/conn.php');
$tensp =addslashes($_POST['tensp']);
$masp =addslashes( $_POST['masp']);
$giasp =addslashes($_POST['giasp']);
$soluong =addslashes($_POST['soluong']);
$tomtat =addslashes($_POST['tomtat']);
$noidung =addslashes($_POST['noidung']);
$tinhtrang =addslashes($_POST['tinhtrang']);
$danhmuc =addslashes($_POST['danhmuc']);
//xuly hinh anh
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp = $_FILES['hinhanh']['tmp_name'];
$hinhanh = time().'_'.$hinhanh;

if(isset($_POST['themsanpham'])){
    //them
    $sql_them = "INSERT INTO tbl_sanpham(tensanpham,masp,giasp,soluong,hinhanh,tomtat,noidung,tinhtrang,id_danhmuc) 
    VALUE('$tensp','$masp','$giasp','$soluong','$hinhanh','$tomtat','$noidung','$tinhtrang','$danhmuc')";
    //echo $sql_them;
    mysqli_query($con,$sql_them);
    move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
    header('Location:../../index.php?action=quanlysanpham&query=them');

}elseif(isset($_POST['suasanpham'])){
    //sua
    if($hinhanh_tmp!=''){
        move_uploaded_file($hinhanh_tmp,'uploads/'.$hinhanh);
       
        $sql_update = "UPDATE tbl_sanpham SET tensanpham='$tensp', masp='$masp', giasp='$giasp', soluong='$soluong', hinhanh='$hinhanh', tomtat='$tomtat', noidung='$noidung', tinhtrang='$tinhtrang', id_danhmuc='$danhmuc' 
        WHERE id_sanpham='$_GET[idsanpham]' ";
        //echo $sql_update;
        //xoa hinh anh cu
        $sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham='$_GET[idsanpham]' LIMIT 1";
        $query =mysqli_query($con,$sql);
        while($row = mysqli_fetch_array($query)){
            unlink('uploads/'.$row['hinhanh']);
        }

    }else{
        $sql_update = "UPDATE tbl_sanpham SET tensanpham='$tensp', masp='$masp', giasp='$giasp', soluong='$soluong', tomtat='$tomtat', noidung='$noidung', tinhtrang='$tinhtrang',id_danhmuc='$danhmuc'
        WHERE id_sanpham='$_GET[idsanpham]' ";
        echo $sql_update;
    }  
    mysqli_query($con,$sql_update);
    header('Location:../../index.php?action=quanlysanpham&query=them');

}else{
    $id=$_GET['idsanpham'];
    $sql = "SELECT * FROM tbl_sanpham WHERE id_sanpham='$id' LIMIT 1";
    $query =mysqli_query($con,$sql);
    while($row = mysqli_fetch_array($query)){
        unlink('uploads/'.$row['hinhanh']);
    }
    $sql_xoa = "DELETE FROM tbl_sanpham WHERE id_sanpham='$id'";
    mysqli_query($con,$sql_xoa);
    header('Location:../../index.php?action=quanlysanpham&query=them');
}
?>
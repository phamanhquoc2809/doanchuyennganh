<?php
    session_start();
    include('../../admin/config/conn.php');
    $id_khachhang=$_SESSION['id_khachhang'];
    $permitted_chars = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $code_order = substr(str_shuffle($permitted_chars), 0, 10);
    //echo substr(str_shuffle($permitted_chars), 0, 10);
    $insert_cart= "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status) VALUE('$id_khachhang','$code_order',1)";
    $cart_query = mysqli_query($con,$insert_cart);
    if($cart_query){
        //them gio hang chi tiet
        foreach($_SESSION['cart'] as $key => $value){
            $id_sanpham = $value['id'];
            $soluong = $value['soluong'];
            $insert_order_details= "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluong_mua) VALUE('$id_sanpham','$code_order','$soluong')";
            mysqli_query($con,$insert_order_details);
        }

    }
    unset($_SESSION['cart']);
    header('location: ../../index.php?quanly=camon');
    
?>
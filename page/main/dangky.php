<h3>Đăng ký thành viên</h3>
<?php
if(isset($_POST['dangky'])){
    $tenkhachhang=$_POST['hoten'];
    $email=$_POST['email'];
    $dienthoai=$_POST['dienthoai'];
    $diachi=$_POST['diachi'];
    $matkhau=md5($_POST['matkhau']);
    $sql_dangky= mysqli_query($con,"INSERT INTO tbl_dangky(tenkhachhang,email,diachi,matkhau,sodienthoai) VALUES('$tenkhachhang','$email','$diachi','$matkhau','$dienthoai')");
    if($sql_dangky){
        //echo '<p style="color:green;">Bạn đã đăng ký thành công!</p>';
        header("location:index.php?quanly=dangnhap");
    }else {
        echo '<p style="color:red;">Đăng ký thất bại! Vui lòng thử lại!</p>';
        //header("location:index.php?quanly=dangky");
    }
} 
?>

<style>
    table.dangky tr td{
        padding: 5px;
    }
</style>
<form onsubmit="return kiemtra()" action="" method="POST">
    <table class="dangky" style="width: 50%;">
        <tr>
            <td>Họ tên: </td>
            <td><input id="hoten" type="text" name="hoten"><em id="a5"></em></td>
        </tr>
        <tr>
            <td>Email: </td>
            <td><input id="email" type="text" name="email" oninput="kiemtra_email(this.value)"><em id="a1" style="color:red; font-size:9pt"></em></td>
        </tr>
        <tr>
            <td>Điện thoại: </td>
            <td><input id="dienthoai" type="text" name="dienthoai"><em id="a4"></em></td>
        </tr>
        <tr>
            <td>Địa chỉ: </td>
            <td><input type="text" name="diachi"></em></td>
        </tr>
        <tr>
            <td>Mật khẩu: </td>
            <td><input id="matkhau" type="password" name="matkhau"><em id="a2"></em></td>
        </tr>
        <tr>
            <td>Nhập lại mật khẩu: </td>
            <td><input id="re_matkhau" type="password" name="re_matkhau"><em id="a3"></em></td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="2"><input type="submit" name="dangky" value="Đăng ký"></td>
        </tr>
    </table>
</form>

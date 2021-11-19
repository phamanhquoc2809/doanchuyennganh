<h3>Đăng nhập</h3>
<?php
    if(isset($_POST['dangnhap'])){
        $email=$_POST['email'];
        $matkhau=md5($_POST['password']);
        $sql = "SELECT * FROM tbl_dangky WHERE email='$email' AND matkhau='$matkhau' LIMIT 1";
        $row = mysqli_query($con,$sql);
        $count = mysqli_num_rows($row);
        if($count>0){
            $row_data = mysqli_fetch_array($row);
            $_SESSION['dangnhap'] = $row_data['tenkhachhang'];
            $_SESSION['id_khachhang']=$row_data['id_dangky'];
            header("location:index.php?quanly=giohang");
        }else{
            //header("location:index.php?quanly=dangnhap");
            echo '<p style="color:red;">Tài khoản mật khẩu không chính xác!</p>';
        }
    }
?>

<style>
    table.dangnhap tr td{
        padding: 5px;
    }
</style>
<form action="" autocomplete="off" method="POST">
    <table class="dangnhap" style="text-align:center; width:35%;" >
        <tr>
            <td>Email</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>Mật khẩu</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" name="dangnhap" value="Đăng nhập">
                <br>
                <br>
                <a href="index.php?quanly=dangky" style="text-decoration: none; color:blue; font-size:small;">Bạn chưa có tài khoản?</a></button>
            </td>
        </tr>
    </table>
</form>



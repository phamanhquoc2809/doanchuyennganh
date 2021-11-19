<h3>Đổi mật khẩu</h3>
<?php
    if(isset($_POST['doimatkhau'])){
        $email=$_POST['email'];
        $matkhau_cu=md5($_POST['password_cu']);
        $matkhau_moi=md5($_POST['password_moi']);
        $sql = "SELECT * FROM tbl_dangky WHERE email='$email' AND matkhau='$matkhau_cu' LIMIT 1";
        $row = mysqli_query($con,$sql);
        $count = mysqli_num_rows($row);
        if($count>0){
            $sql_update= mysqli_query($con,"UPDATE tbl_dangky SET matkhau='$matkhau_moi' WHERE email='$email'");
            //echo $sql_update;
            echo '<p style="color:green; font-size:15px">Đổi mật khẩu thành công!</p>';
        }else{
            echo '<p style="color:red; font-size:15px">Đổi mật khẩu không thành công!</p>';
        }
    }
?>
<form action="" autocomplete="off" method="POST">
    <table style="text-align:center;">
        <tr>
            <td>Email</td>
            <td><input type="text" name="email"></td>
        </tr>
        <tr>
            <td>Mật khẩu cũ</td>
            <td><input type="password" name="password_cu"></td>
        </tr>
        <tr>
            <td>Mật khẩu mới</td>
            <td><input type="password" name="password_moi"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="doimatkhau" value="Đổi mật khẩu"></td>
        </tr>
    </table>
    </form>
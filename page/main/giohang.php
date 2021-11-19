<p>Xin chào: <?php 
if(isset($_SESSION['dangnhap'])){
  echo '<span style="color:red;"> '.$_SESSION['dangnhap'].'</span>';
}
 ?></p>

<?php 
    if(isset($_SESSION['cart'])){

    }
?>

<table style="width:100%; text-align:center; border-collapse:collapse;" border="1">
  <tr>
    <th>Id</th>
    <th>Mã sản phẩm</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Số lượng</th>
    <th>Giá sản phẩm</th>
    <th>Thành tiền</th>
    <th>Quản lý</th>
  </tr>
  <?php
    if(isset($_SESSION['cart'])){
        $i = 0;
        $tongtien = 0;
        foreach($_SESSION['cart'] as $cart){
            $thanhtien = $cart['soluong']*$cart['giasp'];
            $tongtien+=$thanhtien;
            $i++;

        
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $cart['masp'] ?></td>
    <td><?php echo $cart['tensanpham'] ?></td>
    <td><img width="150px" src="admin/modules/quanlysanpham/uploads/<?php echo $cart['hinhanh'] ?>" alt=""></td>
    <td>
        <?php echo $cart['soluong'] ?>
        <a href="page/main/themgiohang.php?cong=<?php echo $cart['id']?>"><i class="fa fa-plus" aria-hidden="true"></i></a>
        <a href="page/main/themgiohang.php?tru=<?php echo $cart['id']?>"><i class="fa fa-minus" aria-hidden="true"></i></a>
    </td>
    <td><?php echo number_format($cart['giasp'],0,',','.').' VNĐ'  ?></td>
    <td><?php echo number_format($thanhtien,0,',','.').' VNĐ' ?></td>
    <td><a href="page/main/themgiohang.php?xoa=<?php echo $cart['id']?>">Xóa</a></td>
  </tr>

  <?php } ?>

    <tr>
        <td colspan="8">
            <p style="float:left"><?php echo number_format($tongtien,0,',','.').' VNĐ' ?></p>
            <p style="float:right"><a href="page/main/themgiohang.php?xoatatca=1">Xóa tất cả</a></p>
            <div style="clear:both;"></div>

            <?php 
              if(isset($_SESSION['dangnhap'])){              
            ?>
               <p><a href="page/main/thanhtoan.php">Đặt hàng</a></p>
            <?php }else{ ?>
            <p><a href="index.php?quanly=dangnhap">Đăng nhập đặt hàng</a></p>
            <?php }?>
        </td>

    </tr>
  <?php
     }else{?>

    <tr>
        <td colspan="8"><p>Giỏ hàng rỗng</p></td>
    </tr>
    <?php } ?>
</table>
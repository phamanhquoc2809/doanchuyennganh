<?php
    $sql_lietke_sp = "SELECT * FROM tbl_sanpham,tbl_danhmuc WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id ORDER BY id_sanpham DESC";
    $query_lietke_sp = mysqli_query($con,$sql_lietke_sp);
?>

<p id="a">Liệt kê sản phẩm</p>
<table style="width:100%; text-align:center; border-collapse:collapse;" border="1">
  <tr>
    <th>Id</th>
    <th>Tên sản phẩm</th>
    <th>Hình ảnh</th>
    <th>Giá sản phẩm</th>
    <th>Số lượng</th>
    <th>Danh mục</th>
    <th>Mã sản phẩm</th>
    <th>Tóm tắt</th>
    <th>Trạng thái</th>
    <th>Quản lý</th>
  </tr>
  <?php 
  $i = 0;
  while($row=mysqli_fetch_array($query_lietke_sp)){
      $i++;
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['tensanpham'] ?></td>
    <td><img src="modules/quanlysanpham/uploads/<?php echo $row['hinhanh'] ?>" width="150px" alt=""></td>
    <td><?php echo $row['giasp'] ?></td>
    <td><?php echo $row['soluong'] ?></td>
    <td><?php echo $row['tendanhmuc'] ?></td>
    <td><?php echo $row['masp'] ?></td>
    <td><?php echo $row['tomtat'] ?></td>
    <td><?php if($row['tinhtrang']==1){
        echo 'Kích hoạt';
      }
      else{
        echo 'Ẩn';
      } ?>
    </td>
    <td>
        <a href="modules/quanlysanpham/xuly.php?idsanpham=<?php echo $row['id_sanpham']?>">Xóa</a> | <a href="?action=quanlysanpham&query=sua&idsanpham=<?php echo $row['id_sanpham']?>">Sửa</a>
    </td>
  </tr>
  <?php } ?>
</table>
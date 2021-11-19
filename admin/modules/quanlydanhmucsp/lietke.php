<?php
    $sql_lietke_danhmucsp = "SELECT * FROM tbl_danhmuc ORDER BY thutu ASC";
    $query_lietke_danhmucsp = mysqli_query($con,$sql_lietke_danhmucsp);
?>

<p id="a">Liệt kê danh mục sản phẩm</p>
<table style="width:100%; text-align:center; border-collapse:collapse;" style="width:100%" border="1">
  <tr>
    <th>Id</th>
    <th>Tên danh mục</th>
    <th>Quản lý</th>
  </tr>
  <?php 
  $i = 0;
  while($row=mysqli_fetch_array($query_lietke_danhmucsp)){
      $i++;
  ?>
  <tr>
    <td><?php echo $i ?></td>
    <td><?php echo $row['tendanhmuc'] ?></td>
    <td>
        <a href="modules/quanlydanhmucsp/xuly.php?iddanhmuc=<?php echo $row['id']?>">Xóa</a> | <a href="?action=quanlydanhmucsanpham&query=sua&iddanhmuc=<?php echo $row['id']?>">Sửa</a>
    </td>
  </tr>
  <?php } ?>
</table>
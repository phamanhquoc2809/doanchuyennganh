<?php
    $sql_sua_danhmucsp = "SELECT * FROM tbl_danhmuc WHERE id='$_GET[iddanhmuc]' LIMIT 1";
    $query_sua_danhmucsp = mysqli_query($con,$sql_sua_danhmucsp);
?>
<p id="a">Sửa danh mục sản phẩm</p>
<form action="modules/quanlydanhmucsp/xuly.php?iddanhmuc=<?php echo $_GET['iddanhmuc'] ?>" method="POST">
<table style="width:100%; text-align:center; border-collapse:collapse;" border="1" width="100%">
    <?php
    while($dong = mysqli_fetch_array($query_sua_danhmucsp)){
    ?>
  <tr>
    <th colspan="2">Điền danh mục sản phẩm</th>
  </tr>
  <tr>
      <td>Tên danh mục</td>
      <td><input type="text" value="<?php echo $dong['tendanhmuc']?>" name="tendanhmuc"></td>
  </tr>
  <tr>
      <td>Thứ tự</td>
      <td><input type="text" value="<?php echo $dong['thutu']?>" name="thutu"></td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" name="suadanhmuc" value="Sửa danh mục sản phẩm"></td>
  </tr>
  <?php } ?>
</table>
</form>
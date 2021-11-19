<?php
    $sql_sua_sp = "SELECT * FROM tbl_sanpham WHERE id_sanpham='$_GET[idsanpham]' LIMIT 1";
    $query_sua_sp = mysqli_query($con,$sql_sua_sp);
?>
<p id="a">Sửa sản phẩm</p>
<?php 
    while($row = mysqli_fetch_array($query_sua_sp)){
?>
<form action="modules/quanlysanpham/xuly.php?idsanpham=<?php echo $row['id_sanpham']?>" method="POST" enctype="multipart/form-data">
<table style="width:100%; text-align:center; border-collapse:collapse;" border="1" width="100%">
  <tr>
    <th colspan="2">Điền tên sản phẩm</th>
  </tr>
  <tr>
      <td>Tên sản phẩm</td>
      <td><input type="text" name="tensp" value="<?php echo $row['tensanpham']?>"></td>
  </tr>
  <tr>
      <td>Mã sản phẩm</td>
      <td><input type="text" name="masp" value="<?php echo $row['masp']?>"></td>
  </tr>
  <tr>
      <td>Giá sản phẩm</td>
      <td><input type="text" name="giasp" value="<?php echo $row['giasp']?>"></td>
  </tr>
  <tr>
      <td>Số lượng</td>
      <td><input type="text" name="soluong" value="<?php echo $row['soluong']?>"></td>
  </tr>
  <tr>
      <td>Tóm tắt</td>
      <td><textarea name="tomtat" id="" cols="30" rows="10" style="resize: none"><?php echo $row['tomtat']?></textarea></td>
  </tr>
  <tr>
      <td>Nội dung</td>
      <td><textarea name="noidung" id="" cols="30" rows="10" style="resize: none"><?php echo $row['noidung']?></textarea></td>
  </tr>
  <tr>
      <td>Hình ảnh</td>
      <td>
        <input type="file" name="hinhanh">
        <img src="modules/quanlysanpham/uploads/<?php echo $row['hinhanh'] ?>" width="150px" alt="">
      </td>
  </tr>
  <tr>
    <td>Danh mục sản phẩm</td>
    <td>
    <select name="danhmuc">
          <?php
          $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id DESC";
          $query_danhmuc = mysqli_query($con,$sql_danhmuc);
          while($row_danhmuc = mysqli_fetch_array($query_danhmuc)){
            if($row_danhmuc['id']==$row_danhmuc['id_danhmuc']){
          ?>
          <option selected value="<?php echo $row_danhmuc['id']?>"><?php echo $row_danhmuc['tendanhmuc']?></option>
          <?php
          } else{
          ?>
            <option value="<?php echo $row_danhmuc['id']?>"><?php echo $row_danhmuc['tendanhmuc']?></option>
         
          <?php
        }
      }
          ?>
        </select>
    </td>
  </tr>
  <tr>
      <td>Tình trạng</td>
      <td>
        <select name="tinhtrang">
          <?php
            if($row['tinhtrang']==1){
          ?>
            <option value="1" selected>Kích hoạt</option>
            <option value="0">Ẩn</option>
          <?php
            }else{
          ?>
            <option value="1">Kích hoạt</option>
            <option value="0" selected>Ẩn</option>
          <?php
            }
          ?>
        </select>
      </td>
  </tr>
  <tr>
    <td colspan="2"><input type="submit" name="suasanpham" value="Sửa sản phẩm"></td>
  </tr>
</table>
</form>
<?php } ?>
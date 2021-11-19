<h3>Sản phẩm</h3>

<?php
    $sql_chitiet = "SELECT * FROM tbl_sanpham, tbl_danhmuc 
    WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id AND tbl_sanpham.id_sanpham='$_GET[id]'  LIMIT 1";
    $query_chitiet = mysqli_query($con,$sql_chitiet);
    while($row_chitiet = mysqli_fetch_array($query_chitiet)){
?>
<div class="wrapper_chitiet">
<div class="hinhanh_sp">
    <img width="80%" src="admin/modules/quanlysanpham/uploads/<?php echo $row_chitiet['hinhanh'];?>" alt="">
</div>
<form action="page/main/themgiohang.php?idsanpham=<?php echo $row_chitiet['id_sanpham'] ?> " method="POST">
<div class="chitiet_sp"></div>
    <h3 style="margin: 0; text-transform: capitalize;"><?php echo $row_chitiet['tensanpham'];?></h3>
    <p>Mã sản phẩm: <?php echo $row_chitiet['masp'];?></p>
    <p>Giá sản phẩm: <?php echo number_format($row_chitiet['giasp'],0,',','.')." ".'VNĐ';?> </p>
    <p>Số lượng: <?php echo $row_chitiet['soluong'];?></p>
    <p>Danh mục: <?php echo $row_chitiet['tendanhmuc'];?></p>
    <p><input type="submit" value="Thêm vào giỏ hàng" name="themgiohang" id="themgiohang"></p>

</form>
</div>
<div style="clear: both;"></div>
<div>
    <p style="font-weight: 700;">Chi tiết sản phẩm</p>
    <textarea class="autosize" disabled="disabled"  style="border: none; overflow: hidden; resize: none; width: 80%; line-height:1.5; height: 100%"><?php echo $row_chitiet['noidung'];?></textarea>
    <script type="text/javascript">
        autosize();
        function autosize(){
            var text = $('.autosize');

            text.each(function(){
                $(this).attr('rows',1);
                resize($(this));
            });

            text.on('input', function(){
                resize($(this));
            });
            
            function resize ($text) {
                $text.css('height', 'auto');
                $text.css('height', $text[0].scrollHeight+'px');
            }
        }
    </script>
</div>
<?php } ?>
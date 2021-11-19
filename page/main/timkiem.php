<?php 
    if(isset($_POST['timkiem'])){
        $tukhoa=$_POST['tukhoa'];
    }
    $sql = "SELECT * FROM tbl_sanpham, tbl_danhmuc 
    WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id AND tbl_sanpham.tensanpham LIKE '%".$tukhoa."%' ";
    $query = mysqli_query($con,$sql);

?>
<h3>Từ khóa tìm kiếm: <?php echo $_POST['tukhoa'] ?></h3>
                <ul class="product_list">
                    <?php 
                     while($row = mysqli_fetch_array($query)){
                    ?>
                    <li>
                        <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
                            <img src="admin/modules/quanlysanpham/uploads/<?php echo $row['hinhanh'];?>" alt="">
                            <em class="title_product"><?php echo $row['tensanpham'];?></em>
                            <br>
                            <em class="price_product"><?php echo number_format($row['giasp'],0,',','.')." ".'VNĐ';?></em>
                            <br>
                            <em style="color: gray; font-weight: 500;"> <?php echo $row['tendanhmuc'] ?></em>
                        </a>
                    </li>
                    <?php } ?>
                </ul>
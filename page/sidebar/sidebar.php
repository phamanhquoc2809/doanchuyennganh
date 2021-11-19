<div class="sidebar">
    <p style="margin-left: 10px; font-size:18px; color:#000033; font-weight:700;">Danh mục sản phẩm<p>
                <ul class="list_sidebar">
                <?php 
                    $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id ASC";
                    $query_danhmuc = mysqli_query($con,$sql_danhmuc);
                    while($row = mysqli_fetch_array($query_danhmuc)){
                ?>

                    <li><a href="index.php?quanly=danhmucsanpham&id=<?php echo $row['id'] ?>"><?php echo $row['tendanhmuc'] ?></a></li>
                <?php } ?>
                </ul>
            </div>
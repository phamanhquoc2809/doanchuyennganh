<?php 
    $sql_pro = "SELECT * FROM tbl_sanpham WHERE tbl_sanpham.id_danhmuc='$_GET[id]' ORDER BY id_sanpham DESC";
    $query_pro = mysqli_query($con,$sql_pro);
    //get title

    $sql_cate = "SELECT * FROM tbl_danhmuc WHERE tbl_danhmuc.id='$_GET[id]' LIMIT 1";
    $query_cate = mysqli_query($con,$sql_cate);
    $row_title = mysqli_fetch_array($query_cate);

?>
<h3 style="text-transform: capitalize;"><?php echo $row_title['tendanhmuc']?></h3>
                <ul class="product_list">
                    <?php
                    while($row_pro = mysqli_fetch_array($query_pro)){
                    ?>
                    <li>
                        <a href="index.php?quanly=sanpham&id=<?php echo $row_pro['id_sanpham'] ?>">
                            <div style="width: 100%; height: 65%">
                                <img src="admin/modules/quanlysanpham/uploads/<?php echo $row_pro['hinhanh'];?>" alt="">
                            </div>
                            <div style="width: 100%; height: 35%">
                                <em style="text-align: center;" class="title_product"><?php echo $row_pro['tensanpham'];?></em>
                                <br>
                                <em class="price_product"><?php echo number_format($row_pro['giasp'],0,',','.')." ".'VNĐ';?></em>
                            </div>                            
                        </a>
                    </li>
                    <?php }?>
                </ul>
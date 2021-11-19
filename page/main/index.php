<?php 
    $p =10;//so san pham tren 1 trang
    if(isset($_GET['trang'])){
        $page = $_GET['trang'];
    }else {
        $page = '';
    }
    if($page=='' || $page ==1){
        $begin =0;
    }else{
        $begin = ($page*$p)-$p;
    }
    $sql_pro = "SELECT * FROM tbl_sanpham, tbl_danhmuc 
    WHERE tbl_sanpham.id_danhmuc=tbl_danhmuc.id ORDER BY tbl_sanpham.id_sanpham DESC LIMIT $begin,$p";
    $query_pro = mysqli_query($con,$sql_pro);

?>
<h3>Sản phẩm mới nhất</h3>
                <ul class="product_list">
                    <?php 
                     while($row = mysqli_fetch_array($query_pro)){
                    ?>
                    <li>
                        <a href="index.php?quanly=sanpham&id=<?php echo $row['id_sanpham'] ?>">
                        <div style="width: 100%; height: 65%">
                            <img src="admin/modules/quanlysanpham/uploads/<?php echo $row['hinhanh'];?>" alt="">
                        </div>
                        <div style="width: 100%; height: 35%">
                            <em class="title_product"><?php echo $row['tensanpham'];?></em>
                            <br>
                            <em class="price_product"><?php echo number_format($row['giasp'],0,',','.')." ".'VNĐ';?></em>
                            <br>
                            <em style="color: gray; font-weight: 500;"> <?php echo $row['tendanhmuc'] ?></em>
                        </div>
                        </a>
                    </li>
                    <?php } ?>
                </ul>
            <div style="clear:both"></div>
                <style>
                ul.list_trang{
                    padding: 0;
                    margin: 0;
                    list-style: none;
                }
                ul.list_trang li{
                    float: left;
                    padding: 5px 5px;
                    margin: 5px;
                    background: bisque;
                    display: block;
                }
                ul.list_trang li a{
                    color: black;
                    text-align:center;
                    text-decoration: none;
                    padding: 5px;
                }
                </style>

                
                <br><br>
                <?php 
                    $sql_trang = mysqli_query($con,"SELECT * FROM tbl_sanpham");
                    $row_count = mysqli_num_rows($sql_trang);
                    $trang = ceil($row_count/$p);
                ?>
                <ul class="list_trang">

                    <?php 
                        for($i=1;$i<=$trang;$i++){
                    ?>
                <li <?php if($i==$page){echo 'style="background:brown"';}else {
                    echo '';
                } ?>><a  href="index.php?trang=<?php echo $i ?>"><?php echo $i ?></a></li>
                <?php } ?>
                </ul>
<!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\main\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->


<?php foreach ($post->get_val_id('products', 'id_pro', $_GET['id_chitiet']) as $val) : extract($val); ?>
    <main class="container mt-5">
        <ul class="breadcrumb">
            <li class="breadcrumb-item"><a href="../html/home.html">Trang chủ</a></li>
            <li class="breadcrumb-item active"><a href="../html/chitiet.html">Chi tiết sản phẩm</a></li>
        </ul>
        <div class="container tieude-main py-1">
            <a href="">
                <span class="text-white"><i class="far fa-comment"></i> Chi tiết sản phẩm</span>
            </a>
        </div>
        <section class="p-5" style="box-shadow: 0px 0px 10px rgba(134, 133, 133, 0.37); border-radius: 0px 0px 40px 40px;">
            <div class="row">
                <div class="col-md-6 mb-4 mb-md-0">
                    <div id="mdb-lightbox-ui">

                    </div>

                    <div class="mdb-lightbox">

                        <div class="row product-gallery">

                            <div class="img col-12 mb-0 img-magnifier-container">
                                <img src="<?= IMAGE ?><?= $image_pro ?>" id="myimage" class="img-fluid z-depth-1">
                            </div>

                            <div class="col-12 mt-3">
                                <div class="row">
                                    <?php if (!empty($post->get_val_id('albums', 'id_product', $_GET['id_chitiet']))) {
                                        foreach ($post->get_val_id('albums', 'id_product', $_GET['id_chitiet']) as $val) : extract($val) ?>
                                            <div class=" col-3 border d-flex">
                                                <img src="<?= IMAGE ?><?= $image_album ?>" width="100px" height="100px">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                    <?php endforeach;
                                    } ?>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6">
                    <p class="fs-5">
                         <strong> Sản phẩm: <?= $title_pro ?></strong>
                    </p>
                    <p><span class="mr-1"></i> Giá:
                            <?= number_format($price_pro) ?>
                        </span></p>
                    <!-- <h5 class="card-title d-flex">
                        <span class=""><i class="fas fa-percent"></i> Sale: </span>
                        <div class="sale_sp mx-2">
                            <span>
                                %
                            </span>
                        </div>

                    </h5> -->
                    <!-- <h5 class="card-title text-dark"><i class="fas fa-eye"></i> View:
                        
                    </h5> -->
                    <hr>
                    <div class="table-responsive mb-2">
                        <table class="table table-sm table-borderless">
                            <form action="" method="post">
                                <input type="text" name="id_chitiet" value="<?= $id_pro ?>" hidden>
                                <tbody>
                                    <tr>
                                        <td class="pl-0 pb-0 w-25">Số lượng sản phẩm <?= $quantity_pro ?></td>
                                    </tr>
                                    <tr>
                                        <td class="pl-0">
                                            <div class="def-number-input number-input safari_only mb-0">
                                                <div class="handle-counter d-flex">
                                                    <button type="button" id="subtract" id="subtract" class="btn btn-primary">-</button>
                                                    <input type="number" name="quantity" class="mx-2" id="input" min="1" max="<?= $quantity_pro ?>" value="1">
                                                    <button type="button" id="add" class="btn btn-primary">+</button>
                                                </div>
                                                <button type="submit" name="add_to_cart" class="btn m-md-3 mb-2 add_to_card text-white">ADD to CART</button>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </form>
                        </table>
                    </div>

                    <!-- <a href="?action=like&id_like=">
                        <button type="button" class="btn btn-outline-dark btn-md mb-2"><i class="far fa-heart"></i>
                            Yêu thích</button>
                    </a>
                    <button type="button" class="btn btn-primary btn-md mr-1 mb-2">Mua ngay</button>
                    <div class="share d-flex align-items-center mb-2 ">
                        <span class="btn btn-primary">
                            SHARE
                        </span>
                        <div class="col-md-5 col-lg-4 ml-lg-0 text-center text-md-end d-flex">

                            <a class="btn btn-outline-dark btn-floating m-1 text-black" role="button"><i class="fab fa-facebook-f"></i></a>


                            <a class="btn btn-outline-dark btn-floating m-1 text-black" role="button"><i class="fab fa-twitter"></i></a>


                            <a class="btn btn-outline-dark btn-floating m-1 text-black" role="button"><i class="fab fa-google"></i></a>


                            <a class="btn btn-outline-dark btn-floating m-1 text-black" role="button"><i class="fab fa-instagram"></i></a>
                        </div>

                    </div> -->

                    <div class="share mb-2 mt-3">
                        <span class="border-bottom fs-4 text-danger">
                             Thông tin sản phẩm
                        </span>
                        <div class="tt_sp_chitiet d-flex flex-column mt-3">
                            <?php foreach (explode(',', $thongtin) as $val) { ?>
                                <p><strong><i class="ti-minus"></i><span> <?= $val ?></span></strong></p>
                            <?php }
                            ?>
                        </div>

                    </div>

                    <div class="mt-3 mb-5">
                        <span class="border-bottom fs-4 text-danger">
                            Nội dung sản phẩm
                        </span>
                        <div class="tt_sp_chitiet d-flex flex-column mt-3">
                            <span>
                                <?= $content_pro ?>
                            </span>
                        </div>
                    </div>



                </div>

            </div>
        </section>









        

    </main>
<?php endforeach; ?>
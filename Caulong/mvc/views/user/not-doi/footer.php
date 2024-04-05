    <!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\footer\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->
    <?php if (!empty($post->get_val('info'))) {
        foreach ($post->get_val('info') as $logo) : extract($logo); ?>
            <div class="mt-5 w-100">
                <!-- Footer -->
                <footer class="text-center text-lg-start text-black">

                    <div class="p-1 pb-0">

                        <section class="container">

                            <div class="row">

                                <div class="col-xl-4 col-sm-12 mt-3 d-flex flex-column">
                                    <a class="navbar-brand__end" href=""><img src="<?= IMAGE ?><?= $logo ?>" alt=""></a>
                                    <p>
                                        <a class="">Hotline: 0977508430 | 0792677415</a>
                                    </p>

                                    <p>
                                        <a class="">Email: info@shopvnb.com</a>
                                    </p>
                                    
                                    <p>
                                        <a class="">Hợp tác kinh doanh: 0947342259 (Ms. Thảo)</a>
                                    </p>

                                    <p>
                                        <a class="">Hotline bán sỉ: 0911 105 211</a>
                                    </p>
                                </div>

                                <hr class="w-100 clearfix d-md-none" />

                                <div class="col-xl-4 col-sm-12 mt-3">
                                    <h6 class="text-uppercase mb-4 font-weight-bold">CHÍNH SÁCH</h6>
                                    <p>
                                        <a class="">• Chính sách đổi trả, hoàn tiền</a>
                                    </p>
                                    <p>
                                        <a class="">• Chính sách bảo hành</a>
                                    </p>
                                    <p>
                                        <a class="">• Chính sách xử lý khiếu nại</a>
                                    </p>
                                    <p>
                                        <a class="">• Chính sách vận chuyển</a>
                                    </p>
                                    <p>
                                        <a class="">• Điều khoản sử dụng</a>
                                    </p>
                                </div>


                                <hr class="w-100 clearfix d-md-none" />


                                <div class="col-xl-4 col-sm-12 mt-3">
                                    <h6 class="text-uppercase mb-4 font-weight-bold">
                                        Hướng dẫn
                                    </h6>
                                    <p>
                                        <a class="">• Hướng dẫn chọn vợt cầu lông cho người mới chơi</a>
                                    </p>
                                    <p>
                                        <a class="">• Hướng dẫn thanh toán</a>
                                    </p>
                                    <p>
                                        <a class="">• Kiểm tra bảo hành</a>
                                    </p>
                                    <p>
                                        <a class="">• Kiểm tra đơn hàng</a>
                                    </p>
                                    <p>
                                        <a class="">• Hướng dẫn mua hàng</a>
                                    </p>

                                </div>

                            </div>

                        </section>
                    </div>
                </footer>
                <div class="top" id="myBtn">  </div>
            </div>

    <?php endforeach;
    } ?>
    <script>
        /* Initiate Magnify Function
        with the id of the image, and the strength of the magnifier glass:*/
        magnify("myimage", 3);
    </script>

    <script src="../public/js/button_top.js">
    </script>

    <script src="../public/js/button_nav.js">
    </script>


    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script src="../public/js/slider.js">
    </script>

    <script src="../public/js/input_img.js">
    </script>

    <script src="../public/js/check.js">
    </script>

    <script src="../public/js/buttonpre.js">
    </script>

    <script src="../public/js/validator.js"></script>
    <!-- <script>
        validator({
            form: "#form-2",
            errorSelector: ".form-message",
            rules: [
                validator.isRequired('#phone'),
                validator.isRequired('#email'),
                validator.isRequired('#name'),
                validator.isRequired('#pass'),
                validator.isRequired('#adress'),
                validator.isPhone('#phone'),
                validator.isEmail('#email'),
            ]
        });
    </script> -->

    </body>

    </html>
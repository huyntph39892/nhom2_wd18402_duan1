 <!-- \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\main\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\ -->

<?php
if(isset($id)){
    if (isset($_COOKIE['id_user'])) {
        setcookie('id_user', "", time() - 3600);
    }
    if (isset($_COOKIE['id_admin'])) {
        setcookie('id_admin', "", time() - 3600);
    }
    setcookie('error',"<script>alert('Bạn đăng xuất thành công');</script>",time() + 48000);
}
?>
 <main class="main_login mt-4 d-flex justify-content-center">
        <div class="form__login">
            <div class="form__login_button d-flex justify-content-center">
                <div class="button-user-left btn"><a class="btn" href="../controllers/user.php?action=login">Đăng nhập</a></div>
                <div class="gach"></div>
                <div class="button-user-right btn"><a class="btn" href="../controllers/user.php?action=dangky">Đăng ký</a></div>
            </div>
            <form action="" class="grid-column mt-3" method="POST">
                <div class="input__form__icon card">
                    <i class="far fa-envelope"></i>
                    <input class=" nhap_input_login" type="email" name="email" id="" placeholder="Email của bạn" value="<?php if(isset($_COOKIE['email'])){echo $_COOKIE['email'];}?>">
                </div>
                <div class="input__form__icon card ">
                    <i class="far fa-eye"></i>
                    <input class=" nhap_input_login" type="password" name="pass" placeholder="Mật khẩu của bạn" value="<?php if(isset($_COOKIE['pass'])){echo $_COOKIE['pass'];}?>">
                </div>
                <div><a href="../views/user/quenmk.php?action=quenmk" style="color: blue;">Quên mật khẩu</a></div>
                <input type="submit" value="Đăng nhập" name="login" class="dang_nhap_dk btn">
                
            </form>
        </div>
    </main>

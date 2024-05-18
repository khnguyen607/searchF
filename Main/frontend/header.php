<?php
include_once "../backend/category_class.php";
include_once "login_class.php";
$category = new category;
$show_category = $category->show_category();

$user = new user;
$show_user = $user->show_user();

?>

<!DOCTYPE html>
<html lang="vi-VN">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Review Du lịch</title>
    <script src="/bundles/modernizr?v=inCVuEFe6J4Q07A0AcRsbJic_UE5MwpRMNGcOtk94TE1"></script>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,700&amp;subset=vietnamese" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="style.css">
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-127793164-1"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <header class="navbar">
        <div class="navbar-left">
            <ul>
                <li><a href="home.php">TRANG CHỦ</a></li>
                <?php
                if ($show_category) {
                    $i = 0;
                    while ($result = $show_category->fetch_assoc()) {
                        $i++;
                ?>
                        <li><a href="place.php?danhmuc_id=<?php echo $result['danhmuc_id']; ?>"><?php echo $result['ten_danhmuc']; ?></a></li>
                <?php
                    }
                }
                ?>
                <li><a href="#">THẢO LUẬN</a></li>
            </ul>
        </div>
        <div class="navbar-right">
            <ul>
                <li id="img-user" style="display: none;">
                    <a href=""><img src="https://img.thuthuatphanmem.vn/uploads/2018/09/22/avatar-trang-den-dep_015640236.png" width="20px" style="color:aliceblue"></a>
                </li>
                <li id="login-link" style="display: none;"><a href="login.php"> ĐĂNG NHẬP</a></li>
                <li id="register-link" style="display: none;"><a href="register.php">ĐĂNG KÝ</a></li>
                <li id="logout-link" style="display: none;"><a href="#">ĐĂNG XUẤT</a></li>
            </ul>
        </div>
    </header>
    <div class="sub-menu">
        <ul>
            <?php
            if ($show_user) {
                foreach ($show_user as $result) {
                    $name = $result['user_name'];
                    $email = $result['user_email'];
                    $phone = $result['user_phone'];
            ?>
                    <script>
                        // Lấy giá trị của userName từ localStorage
                        var usernameLocalStorage = localStorage.getItem('userName');

                        // So sánh tên người dùng với giá trị từ localStorage
                        if ("<?php echo $name; ?>" === usernameLocalStorage) {
                            document.write("<li><strong>Tên tài khoản</strong>: <?php echo $name; ?></li>");
                            document.write("<li><strong>Email</strong>: <?php echo $email; ?></li>");
                            document.write("<li><strong>Số điện thoại</strong>: <?php echo $phone; ?></li>");
                        }
                    </script>
            <?php
                }
            }
            ?>
        </ul>
    </div>


    <script>
        console.log(localStorage.getItem('userName'))
    </script>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var loginLink = document.getElementById('login-link');
            var registerLink = document.getElementById('register-link');
            var logoutLink = document.getElementById('logout-link');
            var userRole = localStorage.getItem('userRole');
            var username = localStorage.getItem('userName');
            var email = localStorage.getItem('userEmail');
            var phone = localStorage.getItem('userPhone');
            var imgUser = document.getElementById('img-user');
            var submenu = document.querySelector('.sub-menu');
            if (userRole === null) {

                loginLink.style.display = 'inline';
                registerLink.style.display = 'inline';

            } else {
                loginLink.style.display = 'none';
                registerLink.style.display = 'none';
                logoutLink.style.display = 'inline';
                imgUser.style.display = 'inline';
            }

            logoutLink.addEventListener('click', function(event) {
                event.preventDefault();
                localStorage.removeItem('userRole');

                loginLink.style.display = 'inline';
                registerLink.style.display = 'inline';
                logoutLink.style.display = 'none';
                imgUser.style.display = 'none';
                submenu.style.display = 'none';
                alert('Bạn có muốn đăng xuất không? ')
            });
        });
    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            var navbarLeftItems = document.querySelectorAll('.navbar-left ul li a');
            navbarLeftItems.forEach(function(item) {
                item.addEventListener('click', function(event) {
                    event.preventDefault();
                    window.location.href = item.getAttribute('href');
                });
            });
        });
    </script>

</body>

</html>
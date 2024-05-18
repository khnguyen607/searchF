<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="sidebar.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
  <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
  <title>ADMIN</title>
</head>

<body>
  <div class="row">
    <div class="col-lg-3">
      <nav class="sidebar">
        <div class="text">Trang ADMIN</div> <br>
        <ul>
          <li><a href="#">Tổng quan</a></li>
          <li>
            <a href="#" class="category-btn">Quản lý danh mục
              <span class="fas fa-caret-down first"></span>
            </a>
            <ul class="category-show">
              <li><a href="category_add.php">Thêm danh mục</a></li>
              <li><a href="category_list.php">Danh sách</a></li>
            </ul>
          </li>
          <li>
            <a href="#" class="brand-btn">Quản lý loại sản phẩm
              <span class="fas fa-caret-down second"></span>
            </a>
            <ul class="brand-show">
              <li><a href="addbrand.php">Thêm loại</a></li>
              <li><a href="brand_list.php">Danh sách</a></li>
            </ul>
          </li>
          <li>
            <a href="#" class="product-btn">Quản lý sản phẩm
              <span class="fas fa-caret-down third"></span>
            </a>
            <ul class="product-show">
              <li><a href="productadd.php">Thêm sản phẩm</a></li>
              <li><a href="product_list.php">Danh sách</a></li>
            </ul>
          </li>
          <li><a href="#">Quản lý tài khoản</a></li>
          <li><a href="#">Cài đặt</a></li>
        </ul>
      </nav>
      <script>
        $(".category-btn").click(function() {
          $("nav ul .category-show").toggleClass("show");
          $("nav ul .first").toggleClass("rotate");
        });
        $(".brand-btn").click(function() {
          $("nav ul .brand-show").toggleClass("show_1");
          $("nav ul .second").toggleClass("rotate");
        });
        $(".product-btn").click(function() {
          $("nav ul .product-show").toggleClass("show_2");
          $("nav ul .third").toggleClass("rotate");
        });
        $("nav ul li").click(function() {
          $(this).addClass("active").siblings().removeClass("active");
        });
      </script>
    </div>
    <div class="col-lg-9">
      <!--content-->
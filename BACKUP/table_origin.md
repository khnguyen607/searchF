<?php
include "header_backend.php";
ob_start();
?>

<link rel="stylesheet" href="../css/sticky_table.css" />
<link rel="stylesheet" href="../css/dialog_final.css" />
<style>
    button[type="submit"] {
        outline: none;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        padding: 10px;
        color: #ffffff;
        background-color: #0298cf;
    }

    .button {
        display: inline-block;
        padding: 10px 20px;
        background-color: #0298cf;
        color: #fff;
        text-decoration: none;
        border: none;
        border-radius: 6px;
        cursor: pointer;
        font-size: 16px;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .button:hover {
        background-color: #0272a4;
    }

    .dialog-close {
        font-size: 30px;
    }

</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
<div class="table">
    <div class="table_header">
        <p>Product Details</p>
        <div>
            <input placeholder="Tìm kiếm" />
            <a href="#my-dialog" class="button">+ Thêm mới</a>
            <div class="dialog overlay" id="my-dialog">
                <a href="#" class="overlay-close"></a>
                <div class="dialog-body">
                    <a class="dialog-close" href="#">&times;</a>
                    <h3 align="center">Thêm sản phẩm</h3>
                    <?php include "./backend/productadd.php" ?>
                </div>
            </div>
        </div>
    </div>
    <div class="table_section">
        <table>
            <thead>
                <tr>
                    <th>S No</th>
                    <th>Product</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Owner</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>
                        <img src="../img/sm2.jpg" alt="ảnh" />
                    </td>
                    <td>Camera</td>
                    <td>manhthang0704@gmail.com</td>
                    <td>Manh Thang</td>
                    <td>
                        <button type="submit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                        <button type="submit"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <img src="../img/sm2.jpg" alt="ảnh" />
                    </td>
                    <td>Camera</td>
                    <td>manhthang0704@gmail.com</td>
                    <td>Manh Thang</td>
                    <td>
                        <button type="submit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                        <button type="submit"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <img src="../img/sm2.jpg" alt="ảnh" />
                    </td>
                    <td>Camera</td>
                    <td>manhthang0704@gmail.com</td>
                    <td>Manh Thang</td>
                    <td>
                        <button type="submit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                        <button type="submit"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <img src="../img/sm2.jpg" alt="ảnh" />
                    </td>
                    <td>Camera</td>
                    <td>manhthang0704@gmail.com</td>
                    <td>Manh Thang</td>
                    <td>
                        <button type="submit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                        <button type="submit"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <img src="../img/sm2.jpg" alt="ảnh" />
                    </td>
                    <td>Camera</td>
                    <td>manhthang0704@gmail.com</td>
                    <td>Manh Thang</td>
                    <td>
                        <button type="submit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                        <button type="submit"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <img src="../img/sm2.jpg" alt="ảnh" />
                    </td>
                    <td>Camera</td>
                    <td>manhthang0704@gmail.com</td>
                    <td>Manh Thang</td>
                    <td>
                        <button type="submit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                        <button type="submit"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <img src="../img/sm2.jpg" alt="ảnh" />
                    </td>
                    <td>Camera</td>
                    <td>manhthang0704@gmail.com</td>
                    <td>Manh Thang</td>
                    <td>
                        <button type="submit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                        <button type="submit"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>
                        <img src="../img/sm2.jpg" alt="ảnh" />
                    </td>
                    <td>Camera</td>
                    <td>manhthang0704@gmail.com</td>
                    <td>Manh Thang</td>
                    <td>
                        <button type="submit">
                            <i class="fa-solid fa-pen-to-square"></i>
                        </button>
                        <button type="submit"><i class="fa-solid fa-trash"></i></button>
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

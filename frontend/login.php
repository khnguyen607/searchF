<html>

<head>
	<meta charset="UTF-8">
	<title>Đăng nhập hệ thống</title>
	<link href="./assets/css/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="./assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="./assets/js/jquery.validate.min.js"></script>
</head>

<body>
	<form method="post" id="form_login" class="form_login" onsubmit="return false;">
		<fieldset>
			<legend>Đăng nhập </legend>
			<div class="clear"></div>
			<div class="item">
				<label>Tên tài khoản:</label>
				<input type="text" name="txtuser" id='txtuser'>
			</div>
			<div class="item">
				<label>Mật khẩu:</label>
				<input type="password" name="txtpass">
			</div>
			<div class="item">
				<select name="khachhang_admin" id="khachhang_admin" onchange="updateRole()">
					<option value="0">Khách hàng</option>
					<option value="1">Admin</option>
				</select>
				<input type="hidden" name="role" id="role" value="0">
			</div>
			<div class="button">
				<button type="submit">Đăng nhập</button>
				<button type="reset">Làm lại</button>
			</div>
			<div class="link">
				<a href="home.php">Về trang chủ</a> /
				<a href="register.php" class="last">Đăng ký</a>
			</div>
		</fieldset>
	</form>


	<script type="text/javascript">
		$('#form_login').validate({
			rules: {
				txtuser: {
					required: true,
					remote: {
						url: 'ajax.php?thamso=ajax_check_user',
						type: "post",
						dataType: 'json',
						data: {
							txtuser: function() {
								return $('#form_login :input[name="txtuser"]').val();
							}
						}
					}
				},
				txtpass: {
					required: true,
					remote: {
						url: 'ajax.php?thamso=ajax_check_pass',
						type: "post",
						dataType: 'json',
						data: {
							txtuser: function() {
								return $('#form_login :input[name="txtuser"]').val();
							},
							txtpass: function() {
								return $('#form_login :input[name="txtpass"]').val();
							}
						}
					}
				},
				role: {
					required: true,
					remote: {
						url: 'ajax.php?thamso=ajax_check_role',
						type: "post",
						dataType: 'json',
						data: {
							txtuser: function() {
								return $('#form_login :input[name="txtuser"]').val();
							},
							txtpass: function() {
								return $('#form_login :input[name="txtpass"]').val();
							},
							role: function() {
								return $('#form_login :input[name="role"]').val();
							}

						}
					}
				}
			},

			messages: {
				txtuser: {
					required: "Tên đăng nhập không được bỏ trống!",
					remote: "Tên đăng nhập không tồn tại",
				},
				txtpass: {
					required: "Mật khẩu không được bỏ trống!",
					remote: "Mật khẩu không đúng",
				},
				role: {
					remote: "Quyền truy cập không đúng",
				}
			},
			submitHandler: function(form) {
				var $username = $('#form_login :input[name="txtuser"]').val();
				$.ajax({
					type: 'post',
					url: 'ajax.php?thamso=ajax_login',
					data: $(form).serialize(),
					success: function(res) {
						if (res === '/Bai_Tap_Lon_BE/backend/header_backend.php') {
							alert("Đăng nhập thành công (Admin)");
							localStorage.setItem('userRole', 'admin');
							window.location = res;
						} else if (res === 'home.php') {
							localStorage.setItem('userName', $username); 
							alert("Bạn đã đăng nhập thành công " + $username);
							localStorage.setItem('userRole', 'normal');
							localStorage.setItem('userName', $username); 
							window.location = res;
						} else {
							alert("Đăng nhập không thành công");
						}
					}
				});
			}

		});
	</script>

	<script>
		function updateRole() {
			var selectElement = document.getElementById("khachhang_admin");
			var roleInput = document.getElementById("role");
			roleInput.value = selectElement.value;
		}
	</script>
</body>

</html>
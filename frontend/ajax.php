<?php
$servername = "localhost";
$username = "root"; // Replace with your MySQL username
$password = ""; // Replace with your MySQL password
$database = "review";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
	die("Connection failed: " . $conn->connect_error);
}

// Set character set
mysqli_set_charset($conn, "utf8");

$thamso = $_GET['thamso'];
switch ($thamso) {
	case 'ajax_check_user':
		$txtuser = $_POST['txtuser'];
		$stmt = $conn->prepare("SELECT * FROM tbl_user WHERE user_name=?");
		$stmt->bind_param("s", $txtuser);
		$stmt->execute();
		$result = $stmt->get_result();
		if ($result->num_rows > 0) {
			echo json_encode(TRUE);
		} else {
			echo json_encode(FALSE);
		}
		break;
	case 'ajax_check_pass':
		$txtuser = $_POST['txtuser'];
		$txtpass = $_POST['txtpass'];
		$stmt = $conn->prepare("SELECT * FROM tbl_user WHERE user_name=? AND user_password=MD5(?)");
		$stmt->bind_param("ss", $txtuser, $txtpass);
		$stmt->execute();
		$result = $stmt->get_result();
		if ($result->num_rows > 0) {
			echo json_encode(TRUE);
		} else {
			echo json_encode(FALSE);
		}
		break;
	case 'ajax_check_role':
		$role = $_POST['role'];
		$stmt = $conn->prepare("SELECT * FROM tbl_user WHERE role=?");
		$stmt->bind_param("s", $role);
		$stmt->execute();
		$result = $stmt->get_result();
		if ($result->num_rows > 0) {
			echo json_encode(TRUE);
		} else {
			echo json_encode(FALSE);
		}
		break;
	case 'ajax_login':
		$txtuser = $_POST['txtuser'];
		$txtpass = $_POST['txtpass'];
		$role = $_POST['role'];
		$stmt = $conn->prepare("SELECT * FROM tbl_user WHERE user_name=? AND user_password=MD5(?) AND role=?");

		$stmt->bind_param("sss", $txtuser, $txtpass, $role);
		$stmt->execute();
		$result = $stmt->get_result();

		if ($result->num_rows > 0) {
			// Fetch user details
			$user = $result->fetch_assoc();

			// Redirect based on role
			if ($user['role'] == 1) {
				echo "/Bai_Tap_Lon_BE/backend/header_backend.php";
			} else {
				echo "home.php";
			}
		} else {
			echo "FALSE";
		}
		break;

	case 'ajax_check_user_register':
		$txtuser = $_POST['txtuser'];
		$stmt = $conn->prepare("SELECT * FROM tbl_user WHERE user_name=?");
		$stmt->bind_param("s", $txtuser);
		$stmt->execute();
		$result = $stmt->get_result();
		if ($result->num_rows > 0) {
			echo json_encode(FALSE);
		} else {
			echo json_encode(TRUE);
		}
		break;
	case 'ajax_register':
		$txtuser = $_POST['txtuser'];
		$txtpass = $_POST['txtpass'];
		$txtemail = $_POST['txtemail'];
		$txtphone = $_POST['txtphone'];
		$stmt = $conn->prepare("INSERT INTO tbl_user (user_name, user_password, user_email, user_phone) VALUES (?, MD5(?), ?, ?)");
		$stmt->bind_param("ssss", $txtuser, $txtpass, $txtemail, $txtphone);
		$stmt->execute();
		if ($stmt->affected_rows > 0) {
			echo "TRUE";
		} else {
			echo "FALSE";
		}
		break;

	default:
		# code...
		break;
}

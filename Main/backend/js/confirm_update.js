document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("Form");
  form.addEventListener("submit", function (event) {
    event.preventDefault();
    const isConfirmed = confirm("Bạn có muốn lưu thay đổi không?");
    if (isConfirmed) {
      form.submit();
      alert("Cập nhật thông tin thành công");
    }
  });
});

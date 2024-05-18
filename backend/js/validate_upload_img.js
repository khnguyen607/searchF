document.addEventListener("DOMContentLoaded", function () {
  const form = document.getElementById("Form");
  const fileInput = document.querySelector('input[type="file"]');
  const errorMessage = document.createElement("div");
  errorMessage.className = "error-message hidden";
  errorMessage.textContent = "Chỉ chấp nhận tệp ảnh PNG, JPG hoặc JPEG.";
  errorMessage.style.color = "red";
  fileInput.parentNode.appendChild(errorMessage);

  form.addEventListener("submit", function (event) {
    const file = fileInput.files[0];
    const acceptedExtensions = ["png", "jpg", "jpeg"];
    const fileExtension = file.name.split(".").pop().toLowerCase();

    if (file && !acceptedExtensions.includes(fileExtension)) {
      errorMessage.classList.remove("hidden");
      event.preventDefault();
    } else {
      errorMessage.classList.add("hidden");
    }
  });
});

<form action="">
    <div>
        <input type="text" name="" id="" value='nhập'>
        <button type='submit'>Nộp</button>
    </div>
    <div>
        <input type="text" name="" id="" value='nhập'>
        <button type='submit'>Nộp</button>
    </div>
</form>
<script>
    // JavaScript
    document.addEventListener('DOMContentLoaded', function() {
        // Kiểm tra URL có chứa #my-dialog không
        if (window.location.href.indexOf('#my-dialog') !== -1) {
            // Nếu có, hiển thị dialog
            var dialog = document.getElementById('my-dialog');
            if (dialog) {
                dialog.style.display = 'block';
            }
        }
    });
</script>
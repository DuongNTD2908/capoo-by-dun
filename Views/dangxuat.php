<?php

echo "<script>
    var confirmLogout = confirm('Bạn có chắc chắn muốn đăng xuất không?');
    if (confirmLogout) {
        window.location.href = '../Controllers/UserController.php?action=logout';
    } else {
        window.history.back();
    }
</script>";
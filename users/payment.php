    exit;
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Processing Purchase</title>
    <!-- Include SweetAlert library -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <script>
        // Display SweetAlert when the page loads
        Swal.fire({
            title: 'Processing Purchase',
            text: 'Your purchase is being processed...',
            icon: 'success',
            confirmButtonText: 'OK'
        }).then(function() {
            // Redirect to cart page after clicking OK
            window.location.href = 'cart.php?name=<?php echo urlencode($username); ?>';
        });
    </script>
</body>
</html>
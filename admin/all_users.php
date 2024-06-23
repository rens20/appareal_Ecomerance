<?php
// Include database configuration
require_once '../config/configuration.php';

// Count the number of users signed up
try {
    $stmt = $conn->prepare("SELECT COUNT(*) as total_users FROM user_admin");
    $stmt->execute();
    $result = $stmt->get_result(); // Get the result set from the executed statement
    $row = $result->fetch_assoc(); // Fetch the associative array from the result set
    $totalUsers = $row['total_users']; // Get the total number of users from the array
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}

try {
    $stmt = $conn->prepare("SELECT COUNT(*) as total_deliver FROM items_dilivered");
    $stmt->execute();
    $result = $stmt->get_result(); 
    $row = $result->fetch_assoc(); 
    $totalDeliver = $row['total_deliver']; 
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
// Count the number of products added
try {
    $stmt = $conn->prepare("SELECT COUNT(*) as total_products FROM products");
    $stmt->execute();
    $result = $stmt->get_result(); 
    $row = $result->fetch_assoc(); 
    $totalProducts = $row['total_products']; 
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Total Users</title>
    <!-- Include Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex flex-col md:flex-row h-screen">

<!-- Sidebar -->
<div class="w-full md:w-1/4 bg-blue-900 text-white p-4 flex-shrink-0">
    <h2 class="text-2xl font-bold mb-4">admin </h2>
    <ul class="space-y-2">
        <li>
            <a href="admin.php" class="block px-4 py-2 rounded hover:bg-blue-700">Home</a>
        </li>
      
        <li>
            <a href="all_users.php" data-product="Product-2" class="block px-4 py-2 rounded hover:bg-blue-700 product-links">Count of Users and Deliver</a>
        </li>
        <li>
            <a href="buy.php" data-product="Product-3" class="block px-4 py-2 rounded hover:bg-blue-700 product-links3">Order of Users</a>
        </li>
    </ul>
</div>

<!-- Content -->
<div class="flex flex-col bg-white md:flex-row flex-grow space-y-4 md:space-y-0 md:space-x-4 md:ml-4">
    <div class="bg-white  p-4 flex items-center md:w-1/3">
        <i class="fas fa-users text-2xl text-blue-900"></i>
        <div class="ml-4">
            <h1 class="text-xl font-bold">Total Users:</h1>
            <p class="text-lg"><?php echo $totalUsers; ?></p>
        </div>
    </div>
    <div class="bg-white p-4 flex items-center md:w-1/3">
        <i class="fas fa-truck text-2xl text-blue-900"></i>
        <div class="ml-4">
            <h1 class="text-xl font-bold">Total Deliveries:</h1>
            <p class="text-lg"><?php echo $totalDeliver; ?></p>
        </div>
    </div>
    <div class="bg-white p-4 flex items-center md:w-1/3">
        <i class="fas fa-boxes text-2xl text-blue-900"></i>
        <div class="ml-4">
            <h1 class="text-xl font-bold">Total Products:</h1>
            <p class="text-lg"><?php echo $totalProducts; ?></p>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/js/all.min.js"></script>
</body>
</html>

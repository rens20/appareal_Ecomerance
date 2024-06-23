<?php

function ValidateLogin($name, $email, $password) {
    $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $email = mysqli_real_escape_string($conn, $email);
    $password = mysqli_real_escape_string($conn, $password);

    $sql = "SELECT * FROM user_admin WHERE email = '$email' AND password = '$password' AND name = '$name'";
    $result = mysqli_query($conn, $sql);

    if (!$result) {
        die("Error in SQL query: " . mysqli_error($conn));
    }

    $row = mysqli_fetch_assoc($result);
    mysqli_close($conn);

    return $row;
}

function Register($email, $name, $last_name, $contact, $password) {
    $conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $email = mysqli_real_escape_string($conn, $email);
    $name = mysqli_real_escape_string($conn, $name);
    $last_name = mysqli_real_escape_string($conn, $last_name);
    $contact = mysqli_real_escape_string($conn, $contact);
    $password = mysqli_real_escape_string($conn, $password);

    // Insert user data into database
    $insert = "INSERT INTO user_admin (name, last_name, contact, email, password, type) VALUES ('$name', '$last_name', '$contact', '$email', '$password', 'user')";
    if (mysqli_query($conn, $insert)) {
        mysqli_close($conn);
        echo "Registration successful"; // Debugging message
        return true; // Registration successful
    } else {
        echo "Error: " . mysqli_error($conn); // Debugging message
        mysqli_close($conn);
        return false; // Registration failed
    }
}
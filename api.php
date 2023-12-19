<?php
$host = "localhost";
$username = "root";
$password = "omar";
$database = "mydatabase";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * FROM helloworld";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $row = $result->fetch_assoc();
    echo $row["message"];
} else {
    echo "No message found";
}

$conn->close();
?>

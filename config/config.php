<?php

$host_koneksi = "localhost";
$root = "root";
$password_koneksi = "";
$database_name    = "db_laundry_noval";

$config = mysqli_connect($host_koneksi, $root, $password_koneksi, $database_name);
if (!$config) {
    echo "Koneksi gagal";
    die;
};

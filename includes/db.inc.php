<?php
  $servername = "localhost";
  $username = "root";
  $password = "";
  $titel = "webshop";

  $conn = mysqli_connect($servername, $username, $password, $titel);

  if (!$conn ) {
    die("Connection failed: ".mysqli_connect_error());
  }

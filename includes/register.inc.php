<?php

if (isset($_POST['submit'])) {

  require 'db.inc.php';

  $mail = $_POST['mail'];
  $voornaam = $_POST['voornaam'];
  $tussenvoegsel = $_POST['tussenvoegsel'];
  $achternaam = $_POST['achternaam'];
  $straat = $_POST['straat'];
  $huisnummer = $_POST['huisnummer'];
  $toevoeging = $_POST['toevoeging'];
  $postcode = $_POST['postcode'];
  $stad = $_POST['stad'];
  $nummer = $_POST['nummer'];
  $password = $_POST['password'];
  $passwordrp = $_POST['password-repeat'];

  if ($password !== $passwordrp) {
    header("Location: ../signup.php?=nopassmatch");
  } else {
        $hashedPwd = password_hash($password, PASSWORD_DEFAULT);

        $sql = "INSERT INTO customer (gender, firstName, middleName, lastName, street, houseNumber, houseNumber_addon, zipCode, city, phone, mailadres, password, newsletter_subscription) VALUES ('0', $voornaam, $tussenvoegsel, $achternaam, $straat, $huisnummer, $toevoeging, $postcode, $stad, $nummer, $mail, $hashedPwd, '0')";
        $conn->query($sql);
      }
    }

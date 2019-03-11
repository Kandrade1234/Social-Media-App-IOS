<?php
/**
 * Created by PhpStorm.
 * User: kevinandrade
 * Date: 2019-03-10
 * Time: 20:34
 */

$username = htmlentities($_REQUEST["username"]);    //secure way...encoding
$password = htmlentities($_REQUEST["password"]);
$email = htmlentities($_REQUEST["email"]);
$fullname = htmlentities($_REQUEST["fullname"]);

if(empty($username) || empty($password) || empty($email) || empty($fullname)){
    $returnArray["status"] = "400";
    $returnArray["message"] = "missing required information";
    echo json_encode($returnArray);
    return;
}


$salt = openssl_random_pseudo_bytes(20);    //random pseudo type characters
$secured_password = sha1($password . $salt);



 ?>
<?php
//$connections = mysqli_connect($config['vkrdatabase']['client'],$config['vkrdatabase']['number'],$config['vkrdatabase']['address'],$config['vkrdatabase']['mail'],$config['vkrdatabase']['prog'],$config['vkrdatabase']['message']);
//if(connections == false){
    //echo mysqli_connect_error();
    //exit();
//}
$client = $_POST["client"];
$number = $_POST["number"];
$address = $_POST["address"];
$mail = $_POST["mail"];
$prog = $_POST["prog"];
$message = $_POST["message"];
$client = htmlspecialchars($client);
$number = htmlspecialchars($number);
$address = htmlspecialchars($address);
$mail = htmlspecialchars($mail);
$prog = htmlspecialchars($prog);
$message = htmlspecialchars($message);
$connection = mysqli_connect('localhost', 'root', 'root', 'vkr_maltsev_881');
session_start();
$query 	= "INSERT INTO `info` (`ФИО клиента`, `Дата принятия заказа`, `Программа`, `Телефон`, `Адрес подразделения`, `Адрес электронной почты`, `Сообщение`, `Оформление`) VALUES ('$client', '2022-06-07', '$prog','$number', '$address', '$mail', '$message', 1)";
$queryResult = mysqli_query($connection,$query);
?>
<?php
session_start();

$pdo = new PDO('mysql:host=localhost;dbname=wf3_php_intermediaire_prenom', 'root', '', array(PDO::ATTR_ERRMODE=>PDO::ERRMODE_WARNING) );

$error = '';
$content = '';
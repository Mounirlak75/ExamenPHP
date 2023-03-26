<?php require_once "inc/init.inc.php"; ?>
<?php require_once "inc/header.inc.php"; ?>
<?php



foreach( $_POST as $key => $value ){
    $_POST[$key] = htmlentities( addslashes( $value ) ); 
}

if(!empty($_POST['reservation_message'])){ 
    $pdo->exec("UPDATE advert SET reservation_message = '$_POST[reservation_message]' WHERE id = $_GET[id] ");
}
if(  isset($_GET['id'])){
    $pdostatement = $pdo->query("SELECT*FROM advert WHERE id = $_GET[id] ");
    $annonce = $pdostatement->fetch(PDO::FETCH_ASSOC);
    foreach($annonce as $index => $value){
        $content .= "<p> $index : $value </p>";
    }
}
else{
    header('location:consulter_toutes_les_annonces.php');
    exit;
}




?>
<h1 style='color:red;text-align: center;'>CONSULTER UNE ANNONCE</h1>
<?php echo $content; ?>

<br><br><br><br>

<?php if(empty($annonce['reservation_message'])) : ?>

<form method="post">

    <label>Je réserve</label><br>
    <textarea name="reservation_message" ></textarea><br><br>

    <input type="submit" value="Réserver">

</form>
<?php else  :

    echo "<p><strong> L'appartement n'est plus disponible.. </strong></p>";

endif;
?>



<?php require_once "inc/footer.inc.php"; ?>
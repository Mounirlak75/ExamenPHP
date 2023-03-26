<?php require_once "inc/init.inc.php"; ?>
<?php require_once "inc/header.inc.php"; ?>
<?php

if( $_POST ){
    foreach( $_POST as $key => $value ){
            $_POST[$key] = htmlentities( addslashes( $value ) ); 
    }
        if( strlen( $_POST['postal_code'] ) != 5 ){
           $error .= "<p style='color:red;'>Vous devez renseigner un code postale a 5 chiffres</p>";
        }
    if( !is_numeric( $_POST['price']) ){ 
        $error .= "<p style='color:red;'>Vous devez saisir un prix </p>";
    }
    if( empty( $_POST['postal_code'] ) || empty($_POST['type']) ){
        $error .= "<p style='color:red;'>Veuillez renseigner les champs obligatoires</p>";
    }
    if( empty($error) ){ 
        $pdo->exec("INSERT INTO advert(title, description, postal_code, city, type, price) 
                            VALUES( 
                                    '$_POST[title]',
                                    '$_POST[description]',
                                    '$_POST[postal_code]',
                                    '$_POST[city]',
                                    '$_POST[type]',
                                    '$_POST[price]'
                                ) 
                ");
    }
}
?>
<h1 style='color:red;text-align: center;'>AJOUTER UNE ANNONCE</h1>
<?php echo $error; ?>


<form method="post">

    <label>Titre de l'annonce</label><br>
    <input type="text" name="title"><br><br>

    <label>description</label><br>
    <textarea name="description" cols="30" rows="10"></textarea><br><br>
    
    <label>Code Postale</label><br>
    <input type="number" name="postal_code"><br><br>

    <label>Ville</label><br>
    <input type="text" name="city"><br><br>

    <label>Louer/acheter</label><br>
    <select name="type" >
       <option value="location">Location</option>
       <option value="vente">Vente</option>
    </select><br><br>
    
    <label>Prix</label><br>
    <input type="number" name="price"><br><br>

    <input type="submit" value="Valider">

</form>

<?php require_once "inc/footer.inc.php"; ?>

<?php require_once "inc/init.inc.php"; ?>
<?php require_once "inc/header.inc.php"; ?>
<?php
$pdostatement = $pdo->query("SELECT*FROM advert ORDER BY id ASC");
$content .='<table border="1">';
    while($annonce = $pdostatement->fetch(PDO::FETCH_ASSOC)){
        $content .='<tr>';
            foreach($annonce as $index => $value){
                if($index != 'reservation_message' && $index != "id"){ 
                    $content .= "<td> $value </td>";
                }
                elseif( $index == 'reservation_message'){ 
                    if( !empty($value) ) { 
                        $content .= "<td> <p style='color: green;'><strong>Réservé</p> </strong></td>";    
                    }
                    else{ 
                        $content .= "<td> <p style='color: grey;'><strong> Disponible</p> </strong></td>";    
                    }
                }
            }
            $content .= "<td> <a href='consulter_une_annonce.php?id=$annonce[id]'> Voir l'annonce </a> </td>";
        $content .='</tr>';
    }
$content .='</table>';
?>
<h1 style='color:red;text-align: center;'>TOUTES LES ANNONCES</h1>

<?= $content ?>

<?php require_once "inc/footer.inc.php"; ?>
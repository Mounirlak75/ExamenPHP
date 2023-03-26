<?php require_once "inc/init.inc.php" ?> 
<?php require_once "inc/header.inc.php" ?> 
<?php

$pdostatement = $pdo->query("SELECT*FROM advert ORDER BY id DESC LIMIT 15");

$content .= "<table border='1'>";
    while( $annonce = $pdostatement->fetch( PDO::FETCH_ASSOC) ){ 
        $content.= "<tr>";
            foreach( $annonce as $indice => $value ){
                if( $indice == 'title'){
                  $content  .= '<td>' . mb_strtoupper(html_entity_decode($value)) . '</td>';
                }
                else{
                    $content .= "<td> $value </td>";
                }
            }
        $content.= "</tr>";
    }
$content .= "</table>";

?>


<h1 style='color:red;text-align: center;'>ACCEUIL</h1>

<?= $content; ?>

<?php require_once "inc/footer.inc.php" ?>   




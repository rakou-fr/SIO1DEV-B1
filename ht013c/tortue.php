<?php
// ht13c : tortues Ninja avec une base de données
//
//  Affichage de la tortue demandée
//

// Récupération de l'ID de la tortue envoyé par le formulaire
$id_tortue = isset($_POST['id_tortue']) ? $_POST['id_tortue'] : null ;
if ($id_tortue == null) {
    die("<p>Erreur, l'ID de la tortue n'a pas été passé dans l'URL</p>");
}

// Connexion à la base de données
$dsn = 'mysql:host=localhost;port=4000;dbname=db_tortue';
$user = 'root';
$password = '';
try {
    $dbh = new PDO($dsn, $user, $password);
    $dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $ex) {
    die("Erreur lors de la connexion SQL : " . $ex->getMessage());
}

// Lecture de la tortue dans la base de données
$sql = "select * from tortue where id_tortue=:id_tortue";
try {
    $sth = $dbh->prepare($sql);
    $sth->execute(array(':id_tortue' => $id_tortue));
    $row = $sth->fetch(PDO::FETCH_ASSOC);
} catch (PDOException $ex) {
    die("Erreur lors de la requête SQL : " . $ex->getMessage());
}
if ($row===false){
  die("<p>Erreur, impossible de trouver la tortue dont l'ID est ".$id_tortue."</p>");
}

// Lecture de la description dans le fichier TEXTE
$fichier = 'files/' . mb_strtolower($row['nom']) . '.txt';
$desc = file_get_contents($fichier);
// Conversion les sauts de ligne \n en balise <br>
$desc = nl2br($desc);

?>
<!-- ht13c : tortues Ninja -->
<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>ht13c : <?= $row['nom'] ?></title>
  <link rel="stylesheet" href="css/main.css">
</head>

<body id="top">
  <h1>ht13c : tortues Ninja</h1>
  <h2><?= $row['nom'] ?></h2>
  <p><img src="img/<?= $row['image'] ?>" alt="<?= $row['nom'] ?>"></p>
  <p>
    <?= $desc ?>
  </p>
  <p>sources : <a href="<?= $row['source'] ?>" target="_blank"><?= $row['source'] ?></a></p>
  <p>Revenir à la <a href="index.html">page d'accueil</a></p>
</body>

</html>
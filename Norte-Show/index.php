<?php

$username = "root";
$password = "";

try {
  $conexao = new PDO('mysql:host=localhost;dbname=norteshow', $username, $password);
    $conexao->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch(PDOException $e) {
    echo 'ERROR: ' . $e->getMessage();
}

if(!empty($_POST['email']) and !empty($_POST['nome']) and !empty($_POST['whatsapp']) and isset($_POST['email'])
 and isset($_POST['nome']) and isset($_POST['whatsapp'])){
  $email = addslashes($_POST['email']);
  $nome = addslashes($_POST['nome']);
  $whatsapp = addslashes($_POST['whatsapp']);

    $dados = filter_input_array(INPUT_POST, $_POST);

    $sql = "INSERT INTO cadastro (email, nome, whatsapp) VALUES (:email, :nome, :whatsapp)";
    
    $sql = $conexao->prepare($sql);
    $sql->bindValue(":email", $dados['email']);
    $sql->bindValue(":nome", $dados['nome']);
    $sql->bindValue(":whatsapp", $dados['whatsapp']);
    $sql->execute();

    if($conexao->lastInsertid() > 0){
      echo "sucesso"; 
    }
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Norte-Show</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="CSS/style.css">
</head>
<body>
	<div class="TOPO">
		<div class="col-md-1">
			<img class="TOPO-IMG-LOGO" src="Images/Logo.png">
		</div>
		<div class="col-md-3">
			<h1 class="TOPO-TEXT-LOGO">NORTE-SHOW</h1>
		</div>
		<div class="col-md-8">
			<h2 class="TOPO-TEXT-SLOGAM">LIBERTE-SE DE SEU COTIDIANO E VENHA SE DIVERTIR!</h2>
		</div>
	</div>
		
	<div class="row">	
		<div class="col-md-4">
			<h3 class="BODY-TEXT1">
				Venha participar do evento!
				Seram tres dias de evento
				com campeonatos de E-sports
				e areas interativas com
				consoles e case mods! 
			</h3>
			<h3 class="BODY-TEXT2">
				Os campeonatos seram realizados durante o periodo vespertino em paralelo as areas interativas!
			</h3>
		</div> <!-- Fim da coluna 1 -->

		<div class="col-md-4">
			<div class="BODY-FORM">
			<form method="post" class="formulario">
				<img src="Images/Arcade.png">
               <h4 >Cadastre-se agora para concorrer a ingressos!<br>!Não perca esta oportunidade!</h4>
               <input type="email" name="email" placeholder="Insira seu E-mail">
               <input type="text" name="nome" placeholder="Informe seu nome"/>
               <div class="icon">
                   <i class="fa fa-whatsapp"  aria-hidden="true"></i> <input type="text" name="whatsapp" placeholder="informe seu whatsapp">
               </div>
               <input type="submit" value="Enviar">
			</div>
		</div> <!-- Fim da coluna 2 -->
			
		<div class="col-md-4">
			<img class="BODY-IMG1" src="Images/Player1.jpg">
			<img class="BODY-IMG2" src="Images/Player2.jpg">
		</div>
	</div>

</body>
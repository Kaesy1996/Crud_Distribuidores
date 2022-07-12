<?php
$errorMSG = "";

if (empty($_POST["name"])) {
    $errorMSG = "Nombre es requerido";
} else {
    $name = $_POST["name"];
}

if (empty($_POST["email"])) {
    $errorMSG = "Email es requerido";
} else {
    $email = $_POST["email"];
}

if (empty($_POST["direccion"])) {
    $errorMSG = "Direccion es requerido";
} else {
    $direccion = $_POST["direccion"];
}

if (empty($_POST["numero"])) {
    $errorMSG = "numero es requerido";
} else {
    $numero = $_POST["numero"];
}

if (empty($_POST["comida"])) {
    $errorMSG = "comida es requerido";
} else {
    $comida = $_POST["comida"];
}

$EmailTo = "2019030429@upsin.edu.mx";
$Subject = "Mazaranch";

// prepare email body text
$Body = "";
$Body .= "Nombre: ";
$Body .= $name;
$Body .= "\n";
$Body .= "Email: ";
$Body .= $email;
$Body .= "\n";
$Body .= "Comentario o Sugerencia: ";
$Body .= $direccion;
$Body .= "\n";
$Body .= "Apellido: ";
$Body .= $numero;
$Body .= "\n";
$Body .= "Ciudad: ";
$Body .= $comida;
$Body .= "\n";

// send email
$success = mail($EmailTo, $Subject, $Body, "De:".$email);

// redirect to success page
if ($success && $errorMSG == ""){
   echo "Enviado con éxito.";
}else{
    if($errorMSG == ""){
        echo "Algo paso mal";
    } else {
        echo $errorMSG;
    }
}
?>
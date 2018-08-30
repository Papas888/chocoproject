<?php
$usuario="root";
$clave="";
$servidor="localhost";
$basedatos="gestion_condoto3";
/*CONECTAR A TABLA DONACIONES*/


	$id_donacion=$_POST['id_donacion'];
	$id_proyecto=$_POST['id_proyecto'];
	$nom_donante=$_POST['nom_donante'];
	$fec_donacion=$_POST['fec_donacion'];
	$tipo_donacion=$_POST['tipo_donacion'];
	$cant_donacion=$_POST['cant_donacion'];
	

	$conecta=mysqli_connect($servidor,$usuario,$clave,$basedatos);
		
		if (!$conecta) {
    		echo "Conexion fallida ";
		}
		else {
			echo "conexion exitosa  " ."<br>" ;
		}
	$inserta="insert into donacion values ('$id_donacion','$id_proyecto','$nom_donante','$fec_donacion','$tipo_donacion','$cant_donacion')";
    $inset=mysqli_query($conecta,$inserta);

	if ($inset){
				echo "se inserto ";

			}
				else{
					echo"no se inserto ","<br>";
					echo $inserta;				}
mysqli_close($conecta);

 


 ?>
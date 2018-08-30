<?php
$usuario="root";
$clave="";
$servidor="127.0.0.1";
$basedatos="gestion_condoto";
/*CONECTAR A TABLA ZONAS*/


	$zona="id_zona";
	$nombre="nom_zona";
	$vivienda="id_vivienda";


	$conecta=mysqli_connect($servidor,$usuario,$clave,$basedatos);
		
		if (!$conecta) {
    		echo "Conexion fallida ";
		}
		else {
			echo "conexion exitosa  " ."<br>" ;
		}

$insert="INSERT INTO riesgo VALUES (default,'$nombre', '$id_vivienda')";

	$sql=mysqli_query($conecta,$insert);

	if (!$sql){
		echo " no se inserto ";
		echo $insert;
}
	else{
		echo"se inserto ";	
}			
				
	mysqli_close($conecta);

?>
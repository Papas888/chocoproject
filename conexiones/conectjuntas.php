<?php
$usuario="root";
$clave="";
$servidor="127.0.0.1";
$basedatos="gestion_condoto";
/*CONECTAR A TABLA JUNTAS*/


	$id_junta="id_junta";
	$nombre="nom_junta";
	$zona="id_zona";
	$proyecto="id_proyecto";



	$conecta=mysqli_connect($servidor,$usuario,$clave,$basedatos);
		
		if (!$conecta) {
    		echo "Conexion fallida ";
		}
		else {
			echo "conexion exitosa  " ."<br>" ;
		}

		$insert="INSERT INTO juntas VALUES (default,'$nombre', '$zona', '$id_proyecto')";

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
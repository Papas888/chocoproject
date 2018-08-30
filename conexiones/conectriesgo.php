<?php
$usuario="root";
$clave="0000";
$servidor="127.0.0.1";
$basedatos="gestion_condoto";
	$zona=$_POST['id_zona'];
	$tiporie=$_POST['tip_riesgo'];
	$color=$_POST['c_alerta'];
	$conecta=mysqli_connect($servidor,$usuario,$clave,$basedatos);

	
	if (!$conecta) {
    		echo "Conexion fallida ";
		}
		else {
			echo "conexion exitosa  " ."<br>" ;
		}

	$insert="INSERT INTO riesgo VALUES (default,'$zona', '$tiporie', '$color')";

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

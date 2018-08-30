<?php
$usuario="root";
$clave="0000";
$servidor="127.0.0.1";
$basedatos="gestion_condoto";
$id_ba=$_POST['id_barrio'];
$direccion=$_POST['direccion_viv'];
$tipov=$_POST['tipo_vivienda'];
$pared=$_POST['mat_pared'];
$suelo=$_POST['mat_suelo'];
$pisos=$_POST['num_pisos'];
$estra=$_POST['estrato'];
$conecta=mysqli_connect($servidor,$usuario,$clave,$basedatos);


	
	if (!$conecta) {
    		echo "Conexion fallida ";
		}
		else {
			echo "conexion exitosa  " ."<br>" ;
		}

		$insert="INSERT INTO vivienda VALUES (default,'$id_ba', '$direccion', '$tipov', '$pared', '$suelo', '$pisos', '$estra')";
		
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


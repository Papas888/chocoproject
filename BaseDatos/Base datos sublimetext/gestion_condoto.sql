create database gestion_condoto;
	use gestion_condoto;
	create table zonas(
		id_zona int auto_increment primary key,
		nom_zona varchar (15),
		id_vivienda int(4) 
		); 
       
	create table riesgos(
		tip_riesgo varchar(15) primary key, /*Desplegables*/
		c_alerta varchar (10),/*Desplegables*/
		id_zona int (2)
		);
		
	create table proyectos(
		id_proyecto int auto_increment primary key,
		tipo_proyecto varchar(15),/*Desplegables*/
		nom_proyecto varchar(15),
		id_zona int (2),
		presupuesto int (10)
		);
		
	create table juntas(
		id_junta int auto_increment primary key,
		nom_junta varchar(15),
		id_zona int (2),
		id_proyecto int (2) 
		);
		create table donaciones(
		id_donacion int auto_increment primary key,
		nom_donante varchar (15),
		fec_donacion date,
		tipo_donacion varchar(15),
		cant_donacion varchar(15),
		id_proyecto int (2)
		);
		
	create table familias(
		id_familia int auto_increment primary key,
		nucleo_familiar varchar(20),
		num_integrantes int(2),/*Desplegables*/
		adultos_mayores int(1),
		mayores_18 int(1),
		jovenes int(1),
		niños int(1)
		);
	create table viviendas(
		id_vivienda int auto_increment primary key,
		direccion varchar(15),
		tipo_viv varchar(15),
		mat_pared varchar(15),/*Desplegables*/
		mat_suelo varchar(15),/*Desplegables*/
		num_pisos int(1),/*Desplegables*/
 		estrato int(1),/*Desplegables*/
 		id_zona int (2) ,
		id_familia int (2) 
		);
	create table enfermedades_esp(
		id_enf int auto_increment primary key,
		tipo_enfermedad varchar(15),/*Desplegables*/
		nivel_gravedad int(1),/*Desplegables*/
		tratamiento varchar(2),/*Desplegables*/
		medicamento varchar(15),/*Desplegables*/
		id familia int(2)
		);
	 

       	alter table zonas add FOREIGN key (id_vivienda) references viviendas(id_vivienda);
		alter table riesgos add FOREIGN key (id_zona) references zonas(id_zona);
		alter table proyectos add FOREIGN key (id_zona) references zonas(id_zona);
		alter table juntas add FOREIGN key (id_zona) references zonas(id_zona);
		alter table juntas add FOREIGN key (id_proyecto) references proyectos(id_proyecto);
		alter table donaciones add FOREIGN key (id_proyecto) references proyectos(id_proyecto);
		alter table viviendas add FOREIGN key (id_familia) references familias(id_familia);
		alter table enfermedades_esp add FOREIGN key (id_familia) references familias(id_familia);
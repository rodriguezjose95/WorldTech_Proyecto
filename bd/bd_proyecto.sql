
create database libreria;
use libreria;

create table tb_productos(
id int primary key auto_increment,
producto varchar(30) not null,
descripcion varchar(150),
id_marca int not null,
pcosto decimal(10,2) not null,
pventa decimal(10,2) not null,
ganancia decimal(10,2) not null,
stock int
);
alter table tb_productos  auto_increment=1000;

create table tb_clientes(
id int primary key auto_increment,
nombres varchar(30) not null,
apellidos varchar(30) not null,
id_sexo  int not null,
id_tipo_doc  int not null,
num_doc  char(11) unique not null,
correo varchar(50) unique not null,
telefono char(9),
fec_nac date not null,
password varchar (20) not null,
direccion varchar(50) not null,
id_distrito varchar(6),
id_provincia varchar(4),
id_departamento varchar(2)
);
alter table tb_clientes  auto_increment=1000;

create table tb_empleados(
id int primary key auto_increment,
nombres varchar(30) not null,
apellidos varchar(30) not null,
id_sexo  int not null,
id_tipo_doc  int not null,
num_doc  char(11) unique not null,
correo varchar(50) unique not null,
telefono char(9),
fec_nac date not null,
password varchar (20) not null,
direccion varchar(50) not null,
id_cargo int
);
alter table tb_clientes  auto_increment=1000;

create table tb_det_prod_cli(
id int primary key auto_increment,
id_cli int not null,
id_prod int not null,
cantidad int not null check(cantidad > 0),
p_unid decimal(10,2) not null,
p_total decimal(10,2)
);
alter table tb_det_prod_cli  auto_increment=100;


create table tb_ventas(
id int primary key auto_increment,
id_det_prod_cli int not null,
subtotal decimal(10,2) not null,
igv decimal(10,2) not null,
total decimal(10,2) not null
);
alter table tb_ventas  auto_increment=100;

create table tb_tipo_doc(
id int primary key auto_increment,
tipo_doc varchar(20) not null
);

create table tb_sexo(
id int primary key auto_increment,
sexo varchar(20) not null
);

create table tb_cargo(
id int primary key auto_increment,
cargo varchar(20) not null
);

create table tb_marca(
id int primary key auto_increment,
marca varchar(20) not null
);

create table tb_departamento(
id varchar(2) primary key,
departamento varchar(50) not null
);

create table tb_provincia(
id varchar(4) primary key,
provincia varchar(50) not null,
id_depa varchar(2) not null
);

create table tb_distrito(
id varchar(6) primary key,
distrito varchar(50) not null,
id_prov varchar(4) not null,
id_depa varchar(2) not null
);

insert into tb_sexo(sexo) values('Hombre'),('Mujer'),('Otro');
insert into tb_tipo_doc(tipo_doc) values('DNI/LE'),('RUC'),('Pasaporte'),('C.E.');
insert into tb_cargo(cargo) values('Administrador'),('Supervisor'),('Vendedor');

/*LLAVES FORANEAS*/
alter table tb_productos add constraint fk_prod_marca foreign key (id_marca) references tb_marca(id) on delete cascade on update cascade;
alter table tb_empleados add constraint fk_emp_sexo foreign key (id_sexo) references tb_sexo(id) on delete cascade on update cascade;
alter table tb_empleados add constraint fk_emp_tipodoc foreign key (id_tipo_doc) references tb_tipo_doc(id) on delete cascade on update cascade;
alter table tb_empleados add constraint fk_emp_cargo foreign key (id_cargo) references tb_cargo(id) on delete cascade on update cascade;
alter table tb_clientes add constraint fk_cli_sexo foreign key (id_sexo) references tb_sexo(id) on delete cascade on update cascade;
alter table tb_clientes add constraint fk_cli_tipodoc foreign key (id_tipo_doc) references tb_tipo_doc(id) on delete cascade on update cascade;
alter table tb_clientes add constraint fk_cli_depa foreign key (id_departamento) references tb_departamento(id) on delete cascade on update cascade;
alter table tb_clientes add constraint fk_cli_prov foreign key (id_provincia) references tb_provincia(id) on delete cascade on update cascade;
alter table tb_clientes add constraint fk_cli_dist foreign key (id_distrito) references tb_distrito(id) on delete cascade on update cascade;
alter table tb_det_prod_cli add constraint fk_detprodcli_cli foreign key (id_cli) references tb_clientes(id) on delete cascade on update cascade;
alter table tb_det_prod_cli add constraint fk_detprodcli_prod foreign key (id_prod) references tb_productos(id) on delete cascade on update cascade;
alter table tb_ventas add constraint fk_ventas_detaprodcli foreign key (id_det_prod_cli) references tb_det_prod_cli(id) on delete cascade on update cascade;
alter table tb_provincia add constraint fk_prov_depa foreign key (id_depa) references tb_departamento(id) on delete cascade on update cascade;
alter table tb_distrito add constraint fk_dist_prov foreign key (id_prov) references tb_provincia(id) on delete cascade on update cascade;
alter table tb_distrito add constraint fk_dist_depa foreign key (id_depa) references tb_departamento(id) on delete cascade on update cascade;

select * from tb_cargo;
select * from tb_clientes;
select * from tb_departamento;
select * from tb_det_prod_cli;
select * from tb_distrito;
select * from tb_empleados;
select * from tb_marca;
select * from tb_productos;
select * from tb_provincia;
select * from tb_sexo;
select * from tb_tipo_doc;
select * from tb_ventas;
















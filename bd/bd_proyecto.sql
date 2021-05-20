drop database WorldTech;
create database WorldTech;
use WorldTech;

create table tb_productos(
id int primary key auto_increment,
producto varchar(30) not null,
descripcion varchar(150),
id_subcategoria int not null,
precio_costo decimal(10,2) not null,
precio_venta decimal(10,2) not null,
dscto int default 0,
precio_final decimal(10,2),
ganancia decimal(10,2) not null,
stock int,
url_img varchar(50) default "sin_imagen.jpg"
);
alter table tb_productos auto_increment=1000;

create table tb_empleados(
id int primary key auto_increment,
nombres varchar(30) not null,
apellidos varchar(30) not null,
id_sexo  int not null,
id_tipo_doc  int not null,
num_doc  char(11) unique not null,
correo varchar(50) unique not null,
usuario varchar(20) unique not null,
password varchar (20) not null,
telefono char(9),
fec_nac date not null,
domicilio varchar(150),
id_distrito varchar(6),
id_cargo int
);
alter table tb_empleados auto_increment=1000;

create table tb_clientes(
id int primary key auto_increment,
nombres varchar(30) not null,
apellidos varchar(30) not null,
id_sexo  int not null,
id_tipo_doc  int not null,
num_doc  char(11) unique not null,
correo varchar(50) unique not null,
password varchar (20) not null,
telefono char(9),
fec_nac date not null
);
alter table tb_clientes auto_increment=1000;

create table tb_domicilios(
id int primary key auto_increment,
id_cliente int,
domicilio varchar(150),
referencia varchar(150),
id_distrito varchar(6)
);

create table tb_carrito(
id int primary key auto_increment,
id_cli int not null,
id_prod int not null,
cantidad int not null check(cantidad > 0)
);
alter table tb_carrito auto_increment=100;

create table tb_ventas(
id int primary key auto_increment,
id_cli int,
fecha date,
subtotal decimal(10,2) not null,
igv decimal(10,2) not null,
total decimal(10,2) not null,
ganancia decimal(10,2),
id_forma_pago int,
id_entrega int,
total_entrega decimal(10,2),
id_domicilio int
);
alter table tb_ventas auto_increment=100;

create table tb_detalle_venta(
id int primary key auto_increment,
id_venta int,
id_prod int,
cantidad int,
pcosto_unid decimal(10,2),
pventa_unid decimal(10,2),
precio_total decimal(10,2),
ganancia decimal(10,2)
);

/*TABLAS CON VALORES PREDETERMINADOS*/
----------------------------------------
create table tb_forma_pago(
id int primary key auto_increment,
forma_pago varchar(20) not null
);

create table tb_entrega(
id int primary key auto_increment,
entrega varchar(20) not null,
precio decimal(10,2)
);

create table tb_tipo_doc(
id int primary key auto_increment,
tipo_doc varchar(20) not null
);

create table tb_sexo(
id int primary key auto_increment,
sexo varchar(20) not null
);

create table tb_categoria(
id int primary key auto_increment,
categoria varchar(30) not null
);

create table tb_subcategoria(
id int primary key auto_increment,
subcategoria varchar(30) not null,
id_categoria int
);

create table tb_cargo(
id int primary key auto_increment,
cargo varchar(50) not null
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
id_depa varchar(2)
);
-------------------------------------------------

/*LLAVES FORANEAS*/
alter table tb_productos add constraint fk_prod_subcat foreign key (id_subcategoria) references tb_subcategoria(id) on delete cascade on update cascade;
alter table tb_subcategoria add constraint fk_subcat_categ foreign key (id_categoria) references tb_categoria(id) on delete cascade on update cascade;
alter table tb_clientes add constraint fk_cli_sexo foreign key (id_sexo) references tb_sexo(id) on delete cascade on update cascade;
alter table tb_clientes add constraint fk_cli_tipodoc foreign key (id_tipo_doc) references tb_tipo_doc(id) on delete cascade on update cascade;
alter table tb_empleados add constraint fk_emp_sexo foreign key (id_sexo) references tb_sexo(id) on delete cascade on update cascade;
alter table tb_empleados add constraint fk_emp_tipodoc foreign key (id_tipo_doc) references tb_tipo_doc(id) on delete cascade on update cascade;
alter table tb_empleados add constraint fk_emp_dist foreign key (id_distrito) references tb_distrito(id) on delete cascade on update cascade;
alter table tb_empleados add constraint fk_emp_cargo foreign key (id_cargo) references tb_cargo(id) on delete cascade on update cascade;
alter table tb_domicilios add constraint fk_dom_cli foreign key (id_cliente) references tb_clientes(id) on delete cascade on update cascade;
alter table tb_domicilios add constraint fk_dom_dist foreign key (id_distrito) references tb_distrito(id) on delete cascade on update cascade;
alter table tb_carrito add constraint fk_carr_cli foreign key (id_cli) references tb_clientes(id) on delete cascade on update cascade;
alter table tb_carrito add constraint fk_carr_prod foreign key (id_prod) references tb_productos(id) on delete cascade on update cascade;
alter table tb_ventas add constraint fk_vent_cli foreign key (id_cli) references tb_clientes(id) on delete cascade on update cascade;
alter table tb_ventas add constraint fk_vent_fpago foreign key (id_forma_pago) references tb_forma_pago(id) on delete cascade on update cascade;
alter table tb_ventas add constraint fk_vent_entr foreign key (id_entrega) references tb_entrega(id) on delete cascade on update cascade;
alter table tb_ventas add constraint fk_vent_dom foreign key (id_domicilio) references tb_domicilios(id) on delete cascade on update cascade;
alter table tb_detalle_venta add constraint fk_detvent_vent foreign key (id_venta) references tb_ventas(id) on delete cascade on update cascade;
alter table tb_detalle_venta add constraint fk_detvent_prod foreign key (id_prod) references tb_productos(id) on delete cascade on update cascade;
alter table tb_provincia add constraint fk_prov_depa foreign key (id_depa) references tb_departamento(id) on delete cascade on update cascade;
alter table tb_distrito add constraint fk_dist_prov foreign key (id_prov) references tb_provincia(id) on delete cascade on update cascade;

insert into tb_sexo(sexo) values('Hombre'),('Mujer'),('Otro');
insert into tb_tipo_doc(tipo_doc) values('DNI/LE'),('RUC'),('Pasaporte'),('C.E.');
insert into tb_categoria(categoria) values
('Celulares'),("PC's"),('Consolas'),('Laptops'),('Accesorios');
insert into tb_subcategoria(subcategoria, id_categoria) values
('Apple',1),('Huawei',1),('LG',1),('Samnsung',1),
('AMD',2),('Intel',2),
('Nintendi Wii',3),('PS3',3),('PS4',3),('XBOX',3),
('Asus',4),('Dell',4),('HP',4),('Lenovo',4),
('PowerBank',5),('Celular',5),('Laptop',5),('PC',5),('Otros',5);
insert into tb_forma_pago(forma_pago) values
('Efectivo'),('T. Credito'),('T. Debito'),('Transferencia'),('Yape');
insert into tb_entrega(entrega, precio) values
('Recojo en Tienda',0),('Delivery',15);

insert into tb_productos(producto,id_subcategoria,precio_costo,precio_venta,dscto,precio_final,ganancia,stock,url_img) values
('Iphone 6',1,750,950,10,(950*90/100),((950*90/100)-750),30,'celulares/apple/apple_iphone_6.png');

select * from tb_subcategoria;
select * from tb_clientes;
select * from tb_departamento;
select * from tb_distrito;
select * from tb_categoria;
select * from tb_productos;
select * from tb_provincia;
select * from tb_sexo;
select * from tb_tipo_doc;
select * from tb_ventas;
select * from tb_detalle_venta;
select * from tb_forma_pago;
select * from tb_entrega;
select * from tb_domicilios;
select * from tb_carrito;



















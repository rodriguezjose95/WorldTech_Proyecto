
use WorldTech;

create view vw_productos as
select p.id, p.producto, p.descripcion, sc.subcategoria, c.categoria, p.precio_costo, p.precio_venta, p.dscto, p.precio_final, p.ganancia, p.stock, p.url_img
from tb_productos as p inner join tb_subcategoria as sc inner join tb_categoria as c 
on p.id_subcategoria = sc.id and sc.id_categoria = c.id;

create view vw_clientes as
select c.id, c.nombres, c.apellidos, s.sexo, td.tipo_doc, c.num_doc, c.correo, c.password, c.telefono, c.fec_nac
from tb_clientes as c inner join tb_sexo as s inner join tb_tipo_doc as td 
on c.id_sexo = s.id and c.id_tipo_doc = td.id;

create view vw_carrito as
select k.id, k.id_cli, c.nombres, c.apellidos, p.producto, k.cantidad, p.precio_final as p_unit, (p.precio_final * k.cantidad) as p_total, p.url_img
from tb_carrito as k inner join tb_clientes as c inner join tb_productos as p
on k.id_cli = c.id and k.id_prod = p.id;

drop view vw_carrito;

select * from vw_productos;
select * from vw_clientes;
select * from vw_carrito;



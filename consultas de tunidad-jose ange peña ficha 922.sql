 INSERT INTO `inmueble` (`id`, `nomenclatura`, `m2`, `id_tipo_inmueble`) VALUES (NULL, 'ap904', '120', '2');

INSERT INTO `cuasa_pago` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_fin`, `valor`, `porcentaje_mora_diario`, `id_tipo_causa_pago`) VALUES
(1, 'pago arriendos', 'pago del mes de arriendos', '2024-09-01', '2024-09-30', 25000, 2, 1),
(2, 'pago multa', 'pago de multa por entrar mascota en zona prohivida', '2024-10-16', '2024-10-16', 100000, 1, 2),
(3, 'remodelacion', 'pago por remodelacion del lugar solicitadopo el arendatairo', '2024-10-17', '2024-10-17', 700000, 0, 4),
(4, 'venta', 'venta del inmueble', '2024-10-12', '2024-10-25', 23000000, 1, 3);

  UPDATE `persona` SET `identificacion` = '1380955', `telefono` = '387771655' WHERE `persona`.`id` = 3;

 UPDATE `persona` SET `identificacion` = '13455', `telefono` = '31221655' WHERE `persona`.`id` = 6;

  UPDATE `persona` SET `identificacion` = '1345555', `telefono` = '31267655', `direccion`= 'calle 4nd 56-54'  WHERE `persona`.`id` = 7;

UPDATE `persona` SET `identificacion` = '1399995', `telefono` = '31767655', `direccion`= 'calle 4nd 56-54'  WHERE `persona`.`id` = 5;




SELECT dip.tipo_relacion, dip.estado, p.nombre, p.apellido, p.identificacion, di.estado, di.registro, m.nombre as municipio, i.nomenclatura, i.m2 
FROM detalle_inmueble_persona as dip 
INNER JOIN detalle_inmueble as di on dip.id_detalle_inmueble = di.id 
INNER JOIN persona as p on dip.id_persona = p.id 
INNER JOIN municipio as m on p.id_municipio = m.id 
INNER JOIN inmueble as i on di.id_inmueble = i.id;

SELECT dip.tipo_relacion, dip.estado, p.nombre, p.apellido, p.identificacion, di.estado, di.registro, m.nombre as municipio, i.nomenclatura, i.m2, ti.titulo 
FROM detalle_inmueble_persona as dip 
INNER JOIN detalle_inmueble as di on dip.id_detalle_inmueble = di.id 
INNER JOIN persona as p on dip.id_persona = p.id 
INNER JOIN municipio as m on p.id_municipio = m.id
INNER JOIN inmueble as i on di.id_inmueble = i.id 
INNER JOIN tipo_inmueble as ti on ti.id = di.id_inmueble;

SELECT c.*, tcp.titulo FROM cuasa_pago as c 
INNER JOIN tipo_causa_pago as tcp on c.id_tipo_causa_pago = tcp.id;

SELECT c.*, tcp.titulo, dip.valor, dip.fecha, dip.soporte
FROM cuasa_pago as c
INNER JOIN tipo_causa_pago as tcp on tcp.id = c.id_tipo_causa_pago
INNER JOIN detalle_inmueble_pago as dip on dip.id_cuasa_pago = c.id

SELECT u.id, r.nombre as rol, p.nombre, p.apellido, p.tipo_identificacion, p.identificacion, m.nombre as municipio, d.nombre as departamento
FROM usuario as u
INNER JOIN rol as r on u.id_rol =r.id
INNER JOIN persona as p on p.id = u.id_persona
INNER JOIN municipio as m on p.id_municipio = m.id
INNER JOIN departamento as d on d.id = m.id_departamento


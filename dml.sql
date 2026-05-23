INSERT INTO tipo_usuario (nombre) VALUES
('Cliente'),('Empleado'),('Proveedor'),('Visitante'),
('Adulto Mayor'),('Embarazada'),('Discapacitado'),
('Estudiante'),('Contratista'),('VIP');

INSERT INTO ciudad (nombre_ciudad, codigo_postal) VALUES
('Cali','76001'),('Bogotá','11001'),('Medellín','05001'),
('Barranquilla','08001'),('Bucaramanga','68001'),
('Cartagena','13001'),('Pereira','66001'),('Manizales','17001'),
('Ibagué','73001'),('Cúcuta','54001');

INSERT INTO usuario (nombre, apellido, id_tipo_usuario, condicion_especial, id_ciudad) VALUES
('Ana','García',1,NULL,1),
('Luis','Martínez',5,'adulto mayor',2),
('María','López',6,'embarazo',1),
('Carlos','Rodríguez',2,NULL,3),
('Sofía','Hernández',7,'silla de ruedas',4),
('Pedro','Torres',2,NULL,1),
('Laura','Díaz',1,NULL,5),
('Jorge','Ramírez',3,NULL,2),
('Valentina','Cruz',1,NULL,1),
('Andrés','Vargas',2,NULL,6);

INSERT INTO empleado (id_usuario, cargo, departamento) VALUES
(4,'Cajero','Servicio al Cliente'),
(6,'Supervisor','Operaciones'),
(10,'Asesor','Consultoría');

INSERT INTO servicio (nombre, descripcion, estado) VALUES
('Despacho','Despacho de mercancía','activo'),
('Entrega artículos','Entrega de pedidos','activo'),
('Recepción artículos','Recepción de devoluciones','activo'),
('Atención al cliente','Consultas generales','activo'),
('Consultoría','Asesoría especializada','activo'),
('Facturación','Gestión de facturas','activo'),
('Soporte técnico','Ayuda técnica','activo'),
('Información','Punto de información','activo'),
('Pagos','Caja y pagos','activo'),
('Reclamos','Atención de reclamos','activo');

INSERT INTO medio_contacto (nombre) VALUES
('Correo'),('Teléfono'),('SMS'),('WhatsApp'),
('Notificación App'),('Llamada'),('Carta'),
('Portal Web'),('Chat'),('Fax');

INSERT INTO turno (id_usuario, id_servicio, id_empleado, fecha, hora_inicio, hora_fin, estado) VALUES
(1,1,1,'2026-05-23','08:00','08:15','atendido'),
(2,4,1,'2026-05-23','08:15','08:30','atendido'),
(3,2,2,'2026-05-23','08:30','08:45','pendiente'),
(5,5,3,'2026-05-23','09:00','09:30','pendiente'),
(7,3,1,'2026-05-23','09:30','09:45','pendiente'),
(9,4,2,'2026-05-23','10:00','10:15','pendiente'),
(1,9,1,'2026-05-24','08:00','08:10','pendiente'),
(2,10,3,'2026-05-24','08:10','08:30','pendiente'),
(3,6,2,'2026-05-24','09:00','09:15','pendiente'),
(8,1,1,'2026-05-24','09:15','09:30','pendiente');

INSERT INTO notificacion (id_usuario, id_medio, mensaje, estado) VALUES
(1,1,'Tu turno T-001 está listo','enviado'),
(2,2,'Tu turno T-002 está listo','enviado'),
(3,3,'Tu turno T-003 está listo','enviado'),
(5,4,'Tu turno T-004 está listo','enviado'),
(7,1,'Tu turno T-005 está listo','enviado'),
(9,3,'Tu turno T-006 está listo','enviado'),
(1,2,'Tu turno T-007 está confirmado','enviado'),
(2,1,'Tu turno T-008 está confirmado','enviado'),
(3,4,'Tu turno T-009 está confirmado','enviado'),
(8,2,'Tu turno T-010 está confirmado','enviado');

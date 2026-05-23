CREATE TABLE tipo_usuario (
    id_tipo_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE ciudad (
    id_ciudad SERIAL PRIMARY KEY,
    nombre_ciudad VARCHAR(100) NOT NULL,
    codigo_postal VARCHAR(10)
);

CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    id_tipo_usuario INTEGER,
    condicion_especial VARCHAR(100),
    id_ciudad INTEGER,
    FOREIGN KEY (id_tipo_usuario) REFERENCES tipo_usuario(id_tipo_usuario),
    FOREIGN KEY (id_ciudad) REFERENCES ciudad(id_ciudad)
);

CREATE TABLE empleado (
    id_empleado SERIAL PRIMARY KEY,
    id_usuario INTEGER,
    cargo VARCHAR(100),
    departamento VARCHAR(100),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE servicio (
    id_servicio SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    estado VARCHAR(20) DEFAULT 'activo'
);

CREATE TABLE turno (
    id_turno SERIAL PRIMARY KEY,
    id_usuario INTEGER,
    id_servicio INTEGER,
    id_empleado INTEGER,
    fecha DATE NOT NULL,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(20) DEFAULT 'pendiente',
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_servicio) REFERENCES servicio(id_servicio),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id_empleado)
);

CREATE TABLE medio_contacto (
    id_medio SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

CREATE TABLE notificacion (
    id_notificacion SERIAL PRIMARY KEY,
    id_usuario INTEGER,
    id_medio INTEGER,
    mensaje TEXT,
    fecha_envio TIMESTAMP DEFAULT NOW(),
    estado VARCHAR(20) DEFAULT 'enviado',
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_medio) REFERENCES medio_contacto(id_medio)
);

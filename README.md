ServiLiMar - Base de Datos 
Laura Dayana Tascon 2439545-2724
Base de datos del sistema de generación de turnos para ServiLiMar.
Parte Practica del parcial en Base de Datos
Programa: Tecnologia en Desarrollo de Software
2026


Se usaron las siguientes tecnologias: 
- PostgreSQL 14
- pgAdmin 4
- Docker

Comandos para los contenedores:


docker run --name postgres-limar -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 -d postgres:14

docker run --name pgadmin-limar -p 8080:80 -e PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com -e PGADMIN_DEFAULT_PASSWORD="limar#123" -d dpage/pgadmin4


Acceso a pgAdmin
- URL: http://localhost:8080
- Email: usuario@servilimar.com
- Password: limar#123

## Archivos
- ddl.sql — Creación de tablas
- dml.sql — Inserción de registros

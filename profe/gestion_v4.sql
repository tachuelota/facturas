DROP DATABASE IF EXISTS gestion;
CREATE DATABASE gestion;
USE gestion;

CREATE TABLE clientes (
    id          INT PRIMARY KEY AUTO_INCREMENT,
    cif         VARCHAR(10),
    nombre      VARCHAR(100),
    direccion   VARCHAR(150),
    poblacion   VARCHAR(100),
    provincia   VARCHAR(100),
    cod_postal  VARCHAR(10)
);

CREATE TABLE facturas   (
    id              INT PRIMARY KEY AUTO_INCREMENT,
    fecha_emision   DATE,
    cliente_id      INT
);


CREATE TABLE albaranes  (
    id              INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id      INT,
    fecha_emision   DATE,
    fecha_entrega   DATE,
    factura_id      INT
);


CREATE TABLE productos  (
    id              INT PRIMARY KEY AUTO_INCREMENT,
    nombre          VARCHAR(100),
    tipo            VARCHAR(100),
    precio_compra   DECIMAL(10,2),
    precio_venta    DECIMAL(10,2)
);

CREATE TABLE albaranes_productos  (
    id              INT PRIMARY KEY AUTO_INCREMENT,
    albaran_id      INT,
    producto_id     INT,
    cantidad        DECIMAL(6,2)
);


INSERT INTO clientes (  id,
                        cif,
                        nombre,
                        direccion,
                        poblacion,
                        provincia,
                        cod_postal)
        VALUES      ( 1, 'A-1111111', 'Cliente 1', 'Dirección de cliente 1', 'Alcorcón', 'Madrid', '28921'),
                    ( 2, 'A-2222222', 'Cliente 2', 'Dirección de cliente 2', 'Alcorcón', 'Madrid', '28921'),
                    ( 3, 'A-3333333', 'Cliente 3', 'Dirección de cliente 3', 'Móstoles', 'Madrid', '28929'),
                    ( 4, 'A-4444444', 'Cliente 4', 'Dirección de cliente 4', 'Badalona', 'Barcelona', '05142'),
                    ( 5, 'A-5555555', 'Cliente 5', 'Dirección de cliente 5', 'Toledo', 'Toledo', '83746')
;

INSERT INTO productos ( id,
                        nombre,
                        tipo,
                        precio_compra,
                        precio_venta )
VALUES
(1, "Samsung Galaxy J5", "Telefonía móvil", 145.25, 199.00),
(2, "Huawei P8 Lite Negro", "Telefonía móvil", 155.15, 206.00),
(3, "Sony Experia C4", "Telefonía móvil", 247.80, 315.50),
(4, "TV Sony Bravia KD55X8507C", "TV", 1150.25, 1349.50),
(5, "TV Led 43 Samsung 43J5570", "TV", 325.80, 499.99),
(6, "TV Led 49 LG 49LF590V", "TV", 425.75, 594.00),
(7, "Canon EOS 1200D + 18-55 f3", "Fotografía", 315.00, 321.00),
(8, "Nikon D610 body", "Fotografía", 1210.50, 1395.50),
(9, "Bowers and Wilkins A5", "Audio", 415.25, 499.99),
(10, "Harman Kardon Onyxs Studio", "Audio", 128.50, 141.50)
;

INSERT INTO facturas (id, fecha_emision, cliente_id)
VALUES
(1, "2014-01-15", 1),
(2, "2014-02-7", 2),
(3, "2014-02-9", 4),
(4, "2014-03-19", 5),
(5, "2014-03-21", 3),
(6, "2014-04-22", 2),
(7, "2014-04-4", 3),
(8, "2014-05-1", 4),
(9, "2014-06-5", 2),
(10, "2014-07-10", 1),
(11, "2014-08-23", 3),
(12, "2014-09-27", 4),
(13, "2014-10-20", 3),
(14, "2014-10-4", 1),
(15, "2014-11-1", 3),
(16, "2014-12-4", 2),
(17, "2015-01-25", 2),
(18, "2015-01-14", 1),
(19, "2015-01-15", 4),
(20, "2015-02-19", 2),
(21, "2015-02-22", 5),
(22, "2015-03-23", 1),
(23, "2015-03-12", 3),
(24, "2015-03-22", 5),
(25, "2015-04-1", 5),
(26, "2015-04-4", 3),
(27, "2015-04-25", 2),
(28, "2015-05-7", 3),
(29, "2015-05-12", 3),
(30, "2015-06-2", 5),
(31, "2015-06-12", 3),
(32, "2015-06-19", 2),
(33, "2015-06-21", 1);

INSERT INTO albaranes (id, factura_id,fecha_emision, fecha_entrega, cliente_id)
VALUES
(1, 1, "2014-01-15","2014-01-15",1),
(2, 2, "2014-02-7","2014-02-7",2),
(3, 2, "2014-02-7","2014-02-7",2),
(4, 3, "2014-02-9", "2014-02-9", 4),
(5, 4, "2014-03-19", "2014-03-19", 5),
(6, 4, "2014-03-19", "2014-03-19", 5),
(7, 4, "2014-03-19", "2014-03-19", 5),
(8, 5, "2014-03-21", "2014-03-21", 3),
(9, 6, "2014-04-22", "2014-04-22", 2),
(10, 7, "2014-04-4", "2014-04-4", 3),
(11, 7, "2014-04-4", "2014-04-4", 3),
(12, 8, "2014-05-1", "2014-05-1", 4),
(13, 9, "2014-06-5", "2014-06-5", 2),
(14, 10, "2014-07-10", "2014-07-10", 1),
(15, 10, "2014-07-10", "2014-07-10", 1),
(16, 10, "2014-07-10", "2014-07-10", 1),
(17, 11, "2014-08-23", "2014-08-23", 3),
(18, 12, "2014-09-27", "2014-09-27", 4),
(19, 13, "2014-10-20", "2014-10-20", 3),
(20, 13, "2014-10-20", "2014-10-20", 3),
(21, 14, "2014-10-4", "2014-10-4", 1),
(22, 15, "2014-11-1", "2014-11-1", 3),
(23, 16, "2014-12-4", "2014-12-4", 2),
(24, 16, "2014-12-4", "2014-12-4", 2),
(25, 16, "2014-12-4", "2014-12-4", 2),
(26, 17, "2015-01-25", "2015-01-25", 2),
(27, 18, "2015-01-14", "2015-01-14", 1),
(28, 18, "2015-01-14", "2015-01-14", 1),
(29, 18, "2015-01-14", "2015-01-14", 1),
(30, 18, "2015-01-14", "2015-01-14", 1),
(31, 19, "2015-01-15", "2015-01-15", 4),
(32, 20, "2015-02-19", "2015-02-19", 2),
(33, 20, "2015-02-19", "2015-02-19", 2),
(34, 21, "2015-02-22", "2015-02-22", 5),
(35, 22, "2015-03-23", "2015-03-23", 1),
(36, 22, "2015-03-23", "2015-03-23", 1),
(37, 23, "2015-03-12", "2015-03-12", 3),
(38, 24, "2015-03-22", "2015-03-22", 5),
(39, 24, "2015-03-22", "2015-03-22", 5),
(40, 24, "2015-03-22", "2015-03-22", 5),
(41, 25, "2015-04-1", "2015-04-1", 5),
(42, 26, "2015-04-4", "2015-04-4", 3),
(43, 26, "2015-04-4", "2015-04-4", 3),
(44, 27, "2015-04-25", "2015-04-25", 2),
(45, 28, "2015-05-7", "2015-05-7", 3),
(46, 28, "2015-05-7", "2015-05-7", 3),
(47, 29, "2015-05-12", "2015-05-12", 3),
(48, 30, "2015-06-2", "2015-06-2", 5),
(49, 30, "2015-06-2", "2015-06-2", 5),
(50, 31, "2015-06-12", "2015-06-12", 3),
(51, 32, "2015-06-19", "2015-06-19", 2),
(52, 32, "2015-06-19", "2015-06-19", 2),
(53, 32, "2015-06-19", "2015-06-19", 2),
(54, 33, "2015-06-21", "2015-06-21", 1);



INSERT INTO albaranes_productos (id, albaran_id, producto_id, cantidad)
VALUES
(1, 1, 2, 1),
(2, 1, 2, 2),
(3, 2, 3, 3),
(4, 2, 1, 1),
(5, 2, 1, 2),
(6, 3, 4, 2),
(7, 3, 5, 1),
(8, 3, 6, 5),
(9, 3, 10, 1),
(10, 4, 8, 2),
(11, 4, 9, 1),
(12, 4, 9, 2),
(13, 4, 8, 2),
(14, 5, 7, 1),
(15, 6, 5, 3),
(16, 6, 6, 1),
(17, 7, 4, 3),
(18, 8, 3, 1),
(19, 8, 4, 3),
(20, 8, 2, 4),
(21, 8, 1, 1),
(22, 9, 2, 2),
(23, 9, 4, 1),
(24, 10, 2, 2),
(25, 10, 7, 1),
(26, 10, 7, 2),
(27, 11, 8, 1),
(28, 12, 9, 2),
(29, 12, 10, 1),
(30, 12, 5, 2),
(31, 13, 4, 2),
(32, 14, 3, 1),
(33, 14, 2, 3),
(34, 14, 6, 1),
(35, 14, 8, 2),
(36, 14, 4, 2),
(37, 15, 3, 3),
(38, 15, 2, 4),
(39, 16, 5, 4),
(40, 16, 6, 1),
(41, 16, 5, 2),
(42, 16, 8, 3),
(43, 17, 7, 1),
(44, 17, 9, 2),
(45, 18, 10, 1),
(46, 18, 1, 1),
(47, 18, 2, 2),
(48, 18, 3, 2),
(49, 19, 5, 3),
(50, 19, 3, 1),
(51, 20, 5, 2),
(52, 21, 6, 3),
(53, 21, 8, 1),
(54, 21, 10, 2),
(55, 22, 1, 1),
(56, 23, 2, 3),
(57, 23, 2, 1),
(58, 24, 3, 3),
(59, 24, 1, 2),
(60, 24, 1, 2),
(61, 24, 4, 1),
(62, 24, 5, 2),
(63, 25, 6, 1),
(64, 25, 10, 3),
(65, 26, 8, 1),
(66, 26, 9, 2),
(67, 26, 9, 1),
(68, 27, 8, 3),
(69, 28, 7, 3),
(70, 28, 5, 1),
(71, 28, 6, 2),
(72, 28, 4, 2),
(73, 29, 3, 2),
(74, 29, 4, 3),
(75, 30, 2, 1),
(76, 30, 1, 2),
(77, 30, 2, 3),
(78, 31, 4, 1),
(79, 32, 2, 3),
(80, 33, 7, 1),
(81, 33, 7, 2),
(82, 33, 8, 2),
(83, 34, 9, 1),
(84, 35, 10, 1),
(85, 36, 5, 3),
(86, 36, 4, 2),
(87, 36, 3, 2),
(88, 36, 2, 1),
(89, 37, 6, 2),
(90, 37, 8, 2),
(91, 37, 4, 3),
(92, 38, 3, 1),
(93, 39, 2, 5),
(94, 40, 5, 2),
(95, 41, 6, 1),
(96, 41, 5, 3),
(97, 41, 8, 2),
(98, 42, 7, 1),
(99, 43, 9, 3),
(100, 43, 10, 1),
(101, 44, 1, 2),
(102, 44, 2, 1),
(103, 44, 3, 3),
(104, 45, 5, 1),
(105, 45, 3, 2),
(106, 45, 5, 3),
(107, 45, 6, 1),
(108, 45, 8, 2),
(109, 46, 10, 1),
(110, 46, 1, 3),
(111, 47, 2, 1),
(112, 47, 7, 2),
(113, 48, 7, 2),
(114, 48, 8, 2),
(115, 49, 9, 1),
(116, 50, 10, 1),
(117, 50, 5, 3),
(118, 50, 4, 2),
(119, 51, 3, 3),
(120, 51, 2, 1),
(121, 51, 6, 2),
(122, 51, 8, 2),
(123, 52, 4, 2),
(124, 52, 3, 1),
(125, 52, 2, 3),
(126, 52, 5, 3),
(127, 53, 6, 2),
(128, 53, 5, 4),
(129, 53, 8, 2),
(130, 53, 7, 5),
(131, 54, 9, 2),
(132, 54, 10, 1);



-- Dados lógicos - Linguagem SQL


-- CREATE TABLE ep3_desenvolvedor (
--     pnome VARCHAR(15) NOT NULL,
--     snome VARCHAR(25) NOT NULL,
--     senha VARCHAR(40) NOT NULL,
--     email VARCHAR(40) PRIMARY KEY,
--     cep NUMERIC(8) NOT NULL,
--     rua VARCHAR(50),
--     numero INT,
--     cidade VARCHAR(30),
--     estado CHAR(2),
--     ativo BOOLEAN
-- );


-- CREATE TABLE ep3_telefone_desenvolvedor  (
--     email VARCHAR(40),
--     telefone NUMERIC(10),
--     PRIMARY KEY(email, telefone),
--     FOREIGN KEY (email) REFERENCES ep3_desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE
-- );


-- CREATE TABLE ep3_projeto (
--     id INT UNIQUE PRIMARY KEY,
--     titulo VARCHAR(30) NOT NULL,
--     descricao VARCHAR(100),
--     adm_email VARCHAR(40),
--     FOREIGN KEY(adm_email) REFERENCES ep3_desenvolvedor(email) ON DELETE RESTRICT ON UPDATE CASCADE
-- );

-- CREATE TABLE ep3_cronograma (
--     date_time TIMESTAMP,
--     descricao VARCHAR(200),
--     projeto_id INT,
--     FOREIGN KEY(projeto_id)  REFERENCES ep3_projeto(id) ON DELETE CASCADE ON UPDATE CASCADE,
--     PRIMARY KEY(date_time, projeto_id)
-- );

-- CREATE TABLE ep3_tarefa (
--     titulo VARCHAR(30) UNIQUE NOT NULL,
--     status VARCHAR(30) DEFAULT 'Undone',
--     projeto_id INT,
--     descricao VARCHAR(100),
--     FOREIGN KEY(projeto_id) REFERENCES ep3_projeto(id) ON DELETE CASCADE ON UPDATE CASCADE, 
--     PRIMARY KEY(titulo, projeto_id)
-- );


--  CREATE TABLE ep3_forum (
--     id INT UNIQUE PRIMARY KEY,
--     projeto_id INT,
--     FOREIGN KEY(projeto_id) REFERENCES ep3_projeto(id) ON DELETE CASCADE ON UPDATE CASCADE
-- );


-- CREATE TABLE ep3_topico (
--     titulo VARCHAR(30) UNIQUE NOT NULL,
--     date_time TIMESTAMP,
--     status BOOLEAN DEFAULT FALSE,
--     forum_id INT,
--     FOREIGN KEY(forum_id) REFERENCES ep3_forum(id) ON DELETE CASCADE ON UPDATE CASCADE, 
--     PRIMARY KEY(forum_id, titulo)
-- );


-- CREATE TABLE ep3_mensagem (
--     id INT UNIQUE,
--     texto VARCHAR(100),
--     date_time TIMESTAMP,
--     topico_titulo VARCHAR(30) NOT NULL,
--     forum_id INT,
--     desenvolvedor_email VARCHAR(40),
--     FOREIGN KEY (topico_titulo, forum_id) REFERENCES ep3_topico(titulo, forum_id) ON DELETE CASCADE ON UPDATE CASCADE,
--     FOREIGN KEY (desenvolvedor_email ) REFERENCES ep3_desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE,
--     PRIMARY KEY(id)
-- );


-- CREATE TABLE ep3_requisito (
--     id INT UNIQUE PRIMARY KEY,
--     titulo VARCHAR(30) NOT NULL,
--     descricao VARCHAR(100),
--     status VARCHAR(10) NOT NULL,
--     projeto_id INT,
--     FOREIGN KEY(projeto_id) REFERENCES ep3_projeto(id)
-- );


-- CREATE TABLE ep3_requisitodados (
--     req_id INT PRIMARY KEY,
--     nome VARCHAR(30) NOT NULL,
--     tipo VARCHAR(15),
--     descricao VARCHAR(100),   
--     FOREIGN KEY(req_id)  REFERENCES ep3_requisito(id) ON DELETE CASCADE ON UPDATE CASCADE
-- );                                                                                                                                                                                                                                


-- CREATE TABLE ep3_requisitofuncional (
--     req_id INT PRIMARY KEY,
--     acao VARCHAR(30) NOT NULL,
--     FOREIGN KEY(req_id)  REFERENCES ep3_requisito(id) ON DELETE CASCADE ON UPDATE CASCADE
-- );


-- CREATE TABLE ep3_reldevprojeto (
--     usuario_email VARCHAR(40),
--     projeto_id INT,
--     FOREIGN KEY(usuario_email) REFERENCES ep3_desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE,
--     FOREIGN KEY(projeto_id) REFERENCES ep3_projeto(id) ON DELETE CASCADE ON UPDATE CASCADE,
--     PRIMARY KEY(usuario_email, projeto_id)
-- );


INSERT INTO ep3_desenvolvedor VALUES
    ('Eduardo', 'Carlos', '50414206', 'Eduardo_Carlos709@mac350.com', 44231451, 'Rua Pedro Luiz', 59, 'Mac350town', 'SP', 1),
    ('Felipe', 'Henrique', '90788692', 'Felipe_Henrique418@mac350.com', 16391374, 'Rua Henrique Carlos', 39, 'Mac350town', 'SP', 1),
    ('Felipe', 'Marco', '85015750', 'Felipe_Marco273@mac350.com', 59219515, 'Rua Luiz Eduardo', 12, 'Mac350town', 'SP', 1),
    ('Carlos', 'Marco', '61268157', 'Carlos_Marco56@mac350.com', 15596603, 'Rua Antonio Henrique', 85, 'Mac350town', 'SP', 1),
    ('Marco', 'Pedro', '62128918', 'Marco_Pedro551@mac350.com', 48597552, 'Rua Henrique Carlos', 5, 'Mac350town', 'SP', 1),
    ('Pedro', 'Luiz', '57475584', 'Pedro_Luiz816@mac350.com', 38202026, 'Rua Marco Carlos', 73, 'Mac350town', 'SP', 1),
    ('Carlos', 'Carlos', '44455397', 'Carlos_Carlos747@mac350.com', 48960704, 'Rua Antonio Pedro', 78, 'Mac350town', 'SP', 1),
    ('Marco', 'Carlos', '83620451', 'Marco_Carlos68@mac350.com', 61728811, 'Rua Henrique Eduardo', 20, 'Mac350town', 'SP', 1),
    ('Gustavo', 'Antonio', '34478418', 'Gustavo_Antonio573@mac350.com', 12699563, 'Rua Carlos Carlos', 39, 'Mac350town', 'SP', 1),
    ('Carlos', 'Marco', '11069929', 'Carlos_Marco603@mac350.com', 30902571, 'Rua Henrique Carlos', 60, 'Mac350town', 'SP', 1);


INSERT INTO ep3_telefone_desenvolvedor VALUES
    ('Eduardo_Carlos709@mac350.com', 36757188),
    ('Gustavo_Antonio573@mac350.com', 61558720),
    ('Felipe_Henrique418@mac350.com', 96462818),
    ('Felipe_Marco273@mac350.com', 88690402),
    ('Eduardo_Carlos709@mac350.com', 38420625),
    ('Eduardo_Carlos709@mac350.com', 54649280),
    ('Carlos_Marco603@mac350.com', 85657537),
    ('Carlos_Carlos747@mac350.com', 29613653),
    ('Gustavo_Antonio573@mac350.com', 27900347),
    ('Marco_Pedro551@mac350.com', 33067479),
    ('Carlos_Carlos747@mac350.com', 99797391),
    ('Carlos_Carlos747@mac350.com', 88910777),
    ('Carlos_Marco56@mac350.com', 86612345),
    ('Pedro_Luiz816@mac350.com', 49989982),
    ('Gustavo_Antonio573@mac350.com', 36965750),
    ('Marco_Pedro551@mac350.com', 37393102),
    ('Eduardo_Carlos709@mac350.com', 45908326),
    ('Eduardo_Carlos709@mac350.com', 81238333),
    ('Marco_Pedro551@mac350.com', 55250078),
    ('Eduardo_Carlos709@mac350.com', 34976136);


INSERT INTO ep3_projeto VALUES
    (0, 'ep3_projeto de Administrativo', 'Descricao', 'Felipe_Henrique418@mac350.com'),
    (1, 'ep3_projeto de RH', 'Descricao', 'Pedro_Luiz816@mac350.com'),
    (2, 'ep3_projeto de Tecnico', 'Descricao', 'Eduardo_Carlos709@mac350.com');

INSERT INTO ep3_cronograma VALUES
    ( '2025-9-29 13:36:17', 'Evento Tecnico 1', 2),
    ( '2025-6-23 23:40:15', 'Evento Tecnico 2', 2),
    ( '2044-12-21 17:6:57', 'Evento Administrativo 1', 0),
    ( '2026-4-4 23:17:58', 'Evento Tecnico 3', 2),
    ( '2054-8-11 6:50:47', 'Evento Tecnico 4', 2),
    ( '2077-10-29 5:6:58', 'Evento Administrativo 2', 0),
    ( '2022-6-24 12:25:10', 'Evento Tecnico 5', 2),
    ( '2061-10-15 2:28:17', 'Evento Tecnico 6', 2),
    ( '2019-10-23 8:42:1', 'Evento Administrativo 3', 0),
    ( '2052-10-31 20:19:30', 'Evento de RH 1', 1),
    ( '2041-3-12 22:24:2', 'Evento de RH 2', 1),
    ( '2025-9-7 21:33:42', 'Evento Tecnico 7', 2);


INSERT INTO ep3_tarefa VALUES
    ('Criar cadastro de entrevista', 'Undone', 1, 'Devera ser criado uma interface em que se possa cadastrar as pessoas entrevistadas'),
    ('Verificar quantidade de setores adm da empresa', 'Done', 0, 'Consultar a empresa e verificar quantos departamentos ha na empresa para se desenvolver um ambiente especifico para cada uma delas');

INSERT INTO ep3_forum VALUES
    (0, 0),
    (1, 1),
    (2, 2);

INSERT INTO ep3_topico VALUES
    ('topico 471', current_timestamp, 0, 2),
    ('topico 361', current_timestamp, 0, 2),
    ('topico 679', current_timestamp, 0, 1),
    ('topico 595', current_timestamp, 0, 2),
    ('topico 458', current_timestamp, 0, 2),
    ('topico 724', current_timestamp, 1, 2),
    ('topico 932', current_timestamp, 1, 1),
    ('topico 936', current_timestamp, 0, 1),
    ('topico 190', current_timestamp, 0, 0);

INSERT INTO ep3_mensagem VALUES
    ('0', 'ep3_mensagem 0', current_timestamp, 'topico 932', 1, 'Marco_Pedro551@mac350.com'),
    ('1', 'ep3_mensagem 1', current_timestamp, 'topico 190', 0, 'Marco_Carlos68@mac350.com'),
    ('2', 'ep3_mensagem 2', current_timestamp, 'topico 471', 2, 'Carlos_Carlos747@mac350.com'),
    ('3', 'ep3_mensagem 3', current_timestamp, 'topico 471', 2, 'Eduardo_Carlos709@mac350.com'),
    ('4', 'ep3_mensagem 4', current_timestamp, 'topico 724', 2, 'Carlos_Marco603@mac350.com'),
    ('5', 'ep3_mensagem 5', current_timestamp, 'topico 190', 0, 'Eduardo_Carlos709@mac350.com'),
    ('6', 'ep3_mensagem 6', current_timestamp, 'topico 932', 1, 'Marco_Pedro551@mac350.com'),
    ('7', 'ep3_mensagem 7', current_timestamp, 'topico 679', 1, 'Marco_Pedro551@mac350.com'),
    ('8', 'ep3_mensagem 8', current_timestamp, 'topico 679', 1, 'Carlos_Marco56@mac350.com'),
    ('9', 'ep3_mensagem 9', current_timestamp, 'topico 471', 2, 'Carlos_Carlos747@mac350.com'),
    ('10', 'ep3_mensagem 10', current_timestamp, 'topico 471', 2, 'Felipe_Marco273@mac350.com'),
    ('11', 'ep3_mensagem 11', current_timestamp, 'topico 724', 2, 'Carlos_Carlos747@mac350.com'),
    ('12', 'ep3_mensagem 12', current_timestamp, 'topico 190', 0, 'Carlos_Carlos747@mac350.com'),
    ('13', 'ep3_mensagem 13', current_timestamp, 'topico 932', 1, 'Gustavo_Antonio573@mac350.com'),
    ('14', 'ep3_mensagem 14', current_timestamp, 'topico 932', 1, 'Eduardo_Carlos709@mac350.com'),
    ('15', 'ep3_mensagem 15', current_timestamp, 'topico 471', 2, 'Felipe_Marco273@mac350.com'),
    ('16', 'ep3_mensagem 16', current_timestamp, 'topico 190', 0, 'Eduardo_Carlos709@mac350.com'),
    ('17', 'ep3_mensagem 17', current_timestamp, 'topico 936', 1, 'Marco_Carlos68@mac350.com'),
    ('18', 'ep3_mensagem 18', current_timestamp, 'topico 932', 1, 'Carlos_Carlos747@mac350.com'),
    ('19', 'ep3_mensagem 19', current_timestamp, 'topico 932', 1, 'Carlos_Marco56@mac350.com'),
    ('20', 'ep3_mensagem 20', current_timestamp, 'topico 936', 1, 'Eduardo_Carlos709@mac350.com'),
    ('21', 'ep3_mensagem 21', current_timestamp, 'topico 190', 0, 'Carlos_Marco603@mac350.com'),
    ('22', 'ep3_mensagem 22', current_timestamp, 'topico 936', 1, 'Felipe_Henrique418@mac350.com'),
    ('23', 'ep3_mensagem 23', current_timestamp, 'topico 936', 1, 'Felipe_Henrique418@mac350.com'),
    ('24', 'ep3_mensagem 24', current_timestamp, 'topico 936', 1, 'Marco_Carlos68@mac350.com'),
    ('25', 'ep3_mensagem 25', current_timestamp, 'topico 471', 2, 'Marco_Carlos68@mac350.com'),
    ('26', 'ep3_mensagem 26', current_timestamp, 'topico 471', 2, 'Gustavo_Antonio573@mac350.com');


INSERT INTO ep3_requisito VALUES
    (0, 'Requisito 0', 'Descricao', 'esta pendente', 1),
    (1, 'Requisito 1', 'Descricao', 'foi aceito', 2),
    (2, 'Requisito 2', 'Descricao', 'foi aceito', 2),
    (3, 'Requisito 3', 'Descricao', 'foi aceito', 1),
    (4, 'Requisito 4', 'Descricao', 'foi aceito', 2),
    (5, 'Requisito 5', 'Descricao', 'foi recusado', 2),
    (6, 'Requisito 6', 'Descricao', 'esta pendente', 0),
    (7, 'Requisito 7', 'Descricao', 'esta pendente', 0),
    (8, 'Requisito 8', 'Descricao', 'esta pendente', 1),
    (9, 'Requisito 9', 'Descricao', 'foi aceito', 2);


INSERT INTO ep3_requisitodados VALUES
    (0,'Requisito de dados 0', 'Dado', 'Descricao do atributo x'),
    (1, 'Requisito de dados 2', 'Funcional', 'Descricao do atributo x');


INSERT INTO ep3_requisitofuncional VALUES
    (1,'Acao p area Tecnica 1'),
    (3, 'Acao p RH 1'),
    (4,'Acao p area Tecnica 2'),
    (5,'Acao p area Tecnica 4'),
    (6,'Acao p area adm 1'),
    (7,'Acao p area adm 2'),
    (8, 'Acao p RH 2'),
    (9,'Acao p area Tecnica 4');


INSERT INTO ep3_reldevprojeto VALUES
    ('Marco_Pedro551@mac350.com', 1),
    ('Carlos_Marco56@mac350.com', 2),
    ('Marco_Carlos68@mac350.com', 1),
    ('Eduardo_Carlos709@mac350.com', 1),
    ('Pedro_Luiz816@mac350.com', 2),
    ('Pedro_Luiz816@mac350.com', 0),
    ('Carlos_Marco56@mac350.com', 0),
    ('Felipe_Marco273@mac350.com', 1),
    ('Carlos_Marco603@mac350.com', 0),
    ('Marco_Carlos68@mac350.com', 0),
    ('Felipe_Henrique418@mac350.com', 0),
    ('Eduardo_Carlos709@mac350.com', 2),
    ('Felipe_Marco273@mac350.com', 2),
    ('Carlos_Carlos747@mac350.com', 2),
    ('Gustavo_Antonio573@mac350.com', 1),
    ('Gustavo_Antonio573@mac350.com', 2),
    ('Carlos_Marco603@mac350.com', 2),
    ('Carlos_Carlos747@mac350.com', 0),
    ('Carlos_Carlos747@mac350.com', 1),
    ('Pedro_Luiz816@mac350.com', 1);








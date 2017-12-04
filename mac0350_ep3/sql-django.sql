-- Dados lógicos - Linguagem SQL


CREATE TABLE ep3_desenvolvedor (
    pnome VARCHAR(15) NOT NULL,
    snome VARCHAR(25) NOT NULL,
    senha VARCHAR(40) NOT NULL,
    email VARCHAR(40) PRIMARY KEY,
    cep NUMERIC(8) NOT NULL,
    rua VARCHAR(50),
    numero INT,
    cidade VARCHAR(30),
    estado CHAR(2),
    ativo BOOLEAN
);


CREATE TABLE ep3_telefone_desenvolvedor  (
    email VARCHAR(40),
    telefone NUMERIC(10),
    PRIMARY KEY(email, telefone),
    FOREIGN KEY (email) REFERENCES ep3_desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE ep3_projeto (
    id INT UNIQUE PRIMARY KEY,
    titulo VARCHAR(30) NOT NULL,
    descricao VARCHAR(100),
    adm_email VARCHAR(40),
    FOREIGN KEY(adm_email) REFERENCES ep3_desenvolvedor(email) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE ep3_cronograma (
    date_time TIMESTAMP,
    projeto_id INT,
    FOREIGN KEY(projeto_id)  REFERENCES ep3_projeto(id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(projeto_id, date_time)
);

CREATE TABLE ep3_tarefa (
    titulo VARCHAR(30) UNIQUE NOT NULL,
    status VARCHAR(30) DEFAULT 'Undone',
    projeto_id INT,
    descricao VARCHAR(100),
    FOREIGN KEY(projeto_id) REFERENCES ep3_projeto(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    PRIMARY KEY(titulo, projeto_id)
);


 CREATE TABLE ep3_forum (
    id INT UNIQUE PRIMARY KEY,
    projeto_id INT,
    FOREIGN KEY(projeto_id) REFERENCES ep3_projeto(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE ep3_topico (
    titulo VARCHAR(30) UNIQUE NOT NULL,
    date_time TIMESTAMP,
    status BOOLEAN DEFAULT FALSE,
    forum_id INT UNIQUE,
    FOREIGN KEY(forum_id) REFERENCES ep3_forum(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    PRIMARY KEY(forum_id, titulo)
);


CREATE TABLE ep3_mensagem (
    id INT UNIQUE,
    texto VARCHAR(100),
    date_time TIMESTAMP,
    topico_titulo VARCHAR(30) UNIQUE NOT NULL,
    forum_id INT,
    desenvolvedor_email VARCHAR(40),
    FOREIGN KEY (topico_titulo, forum_id) REFERENCES ep3_topico(titulo, forum_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (desenvolvedor_email ) REFERENCES ep3_desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(id)
);


CREATE TABLE ep3_requisito (
    id INT UNIQUE PRIMARY KEY,
    titulo VARCHAR(30) NOT NULL,
    descricao VARCHAR(100),
    status VARCHAR(10) NOT NULL,
    projeto_id INT,
    FOREIGN KEY(projeto_id) REFERENCES ep3_projeto(id)
);


CREATE TABLE ep3_requisito_dados (
    req_id INT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    tipo VARCHAR(15),
    descricao VARCHAR(100),   
    FOREIGN KEY(req_id)  REFERENCES ep3_requisito(id) ON DELETE CASCADE ON UPDATE CASCADE
);                                                                                                                                                                                                                                


CREATE TABLE ep3_requisito_funcional (
    req_id INT PRIMARY KEY,
    acao VARCHAR(30) NOT NULL,
    FOREIGN KEY(req_id)  REFERENCES ep3_requisito(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE ep3_rel_desenvolvedor_projeto (
    dev_email VARCHAR(40),
    projeto_id INT,
    FOREIGN KEY(dev_email) REFERENCES ep3_desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(projeto_id) REFERENCES ep3_projeto(id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(usuario_email, projeto_id)
);

-- Pra dar privilegios pro DB
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO mac0350_user;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO mac0350_user;
-- Dados lógicos - Linguagem SQL


CREATE TABLE Desenvolvedor (
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


CREATE TABLE Telefone_Desenvolvedor  (
    email VARCHAR(40),
    telefone NUMERIC(10),
    PRIMARY KEY(email, telefone),
    FOREIGN KEY (email) REFERENCES Desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Projeto (
    id INT UNIQUE PRIMARY KEY,
    titulo VARCHAR(30) NOT NULL,
    descricao VARCHAR(100),
    adm_email VARCHAR(40),
    FOREIGN KEY(adm_email) REFERENCES Desenvolvedor(email) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE Cronograma (
    date_time TIMESTAMP,
    projeto_id INT,
    FOREIGN KEY(projeto_id)  REFERENCES Projeto(id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(projeto_id, date_time)
);

CREATE TABLE Tarefa (
    titulo VARCHAR(30) UNIQUE NOT NULL,
    status VARCHAR(30) DEFAULT 'Undone',
    projeto_id INT,
    descricao VARCHAR(100),
    FOREIGN KEY(projeto_id) REFERENCES Projeto(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    PRIMARY KEY(titulo, projeto_id)
);


 CREATE TABLE Forum (
    id INT UNIQUE PRIMARY KEY,
    projeto_id INT,
    FOREIGN KEY(projeto_id) REFERENCES Projeto(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Topico (
    titulo VARCHAR(30) UNIQUE NOT NULL,
    date_time TIMESTAMP,
    status BOOLEAN DEFAULT FALSE,
    forum_id INT UNIQUE,
    FOREIGN KEY(forum_id) REFERENCES Forum(id) ON DELETE CASCADE ON UPDATE CASCADE, 
    PRIMARY KEY(forum_id, titulo)
);


CREATE TABLE Mensagem (
    id INT UNIQUE,
    texto VARCHAR(100),
    date_time TIMESTAMP,
    topico_titulo VARCHAR(30) UNIQUE NOT NULL,
    forum_id INT,
    desenvolvedor_email VARCHAR(40),
    FOREIGN KEY (topico_titulo, forum_id) REFERENCES Topico(titulo, forum_id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (desenvolvedor_email ) REFERENCES Desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(id)
);


CREATE TABLE Requisito (
    id INT UNIQUE PRIMARY KEY,
    titulo VARCHAR(30) NOT NULL,
    descricao VARCHAR(100),
    status VARCHAR(10) NOT NULL,
    projeto_id INT,
    FOREIGN KEY(projeto_id) REFERENCES Projeto(id)
);


CREATE TABLE RequisitoDados (
    req_id INT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    tipo VARCHAR(15),
    descricao VARCHAR(100),   
    FOREIGN KEY(req_id)  REFERENCES Requisito(id) ON DELETE CASCADE ON UPDATE CASCADE
);                                                                                                                                                                                                                                


CREATE TABLE RequisitoFuncional (
    req_id INT PRIMARY KEY,
    acao VARCHAR(30) NOT NULL,
    FOREIGN KEY(req_id)  REFERENCES Requisito(id) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Rel_Desenvolvedor_Projeto (
    usuario_email VARCHAR(40),
    projeto_id INT,
    FOREIGN KEY(usuario_email) REFERENCES Desenvolvedor(email) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(projeto_id) REFERENCES Projeto(id) ON DELETE CASCADE ON UPDATE CASCADE,
    PRIMARY KEY(usuario_email, projeto_id)
);

-- Pra dar privilegios pro DB
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO mac0350_user;
GRANT ALL PRIVILEGES ON ALL FUNCTIONS IN SCHEMA public TO mac0350_user;
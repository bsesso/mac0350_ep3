INSERT INTO ep3_desenvolvedor VALUES
	('Eduardo', 'Carlos', '50414206', 'Eduardo_Carlos709@mac350.com', 44231451, 'Rua Pedro Luiz', 59, 'Mac350town', 'SP', TRUE),
	('Felipe', 'Henrique', '90788692', 'Felipe_Henrique418@mac350.com', 16391374, 'Rua Henrique Carlos', 39, 'Mac350town', 'SP', TRUE),
	('Felipe', 'Marco', '85015750', 'Felipe_Marco273@mac350.com', 59219515, 'Rua Luiz Eduardo', 12, 'Mac350town', 'SP', TRUE),
	('Carlos', 'Marco', '61268157', 'Carlos_Marco56@mac350.com', 15596603, 'Rua Antonio Henrique', 85, 'Mac350town', 'SP', TRUE),
	('Marco', 'Pedro', '62128918', 'Marco_Pedro551@mac350.com', 48597552, 'Rua Henrique Carlos', 5, 'Mac350town', 'SP', TRUE),
	('Pedro', 'Luiz', '57475584', 'Pedro_Luiz816@mac350.com', 38202026, 'Rua Marco Carlos', 73, 'Mac350town', 'SP', TRUE),
	('Carlos', 'Carlos', '44455397', 'Carlos_Carlos747@mac350.com', 48960704, 'Rua Antonio Pedro', 78, 'Mac350town', 'SP', TRUE),
	('Marco', 'Carlos', '83620451', 'Marco_Carlos68@mac350.com', 61728811, 'Rua Henrique Eduardo', 20, 'Mac350town', 'SP', TRUE),
	('Gustavo', 'Antonio', '34478418', 'Gustavo_Antonio573@mac350.com', 12699563, 'Rua Carlos Carlos', 39, 'Mac350town', 'SP', TRUE),
	('Carlos', 'Marco', '11069929', 'Carlos_Marco603@mac350.com', 30902571, 'Rua Henrique Carlos', 60, 'Mac350town', 'SP', TRUE);


INSERT INTO ep3_telefonedesenvolvedor VALUES
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
	(0, 'Projeto de Administrativo', 'Descricao', 0, 'Felipe_Henrique418@mac350.com'),
	(1, 'Projeto de RH', 'Descricao', 1, 'Pedro_Luiz816@mac350.com'),
	(2, 'Projeto de Tecnico', 'Descricao', 2, 'Eduardo_Carlos709@mac350.com');

INSERT INTO ep3_cronograma VALUES
	(timestamp '2025-9-29 13:36:17', 'Evento Tecnico 1', 2),
	(timestamp '2025-6-23 23:40:15', 'Evento Tecnico 2', 2),
	(timestamp '2044-12-21 17:6:57', 'Evento Administrativo 1', 0),
	(timestamp '2026-4-4 23:17:58', 'Evento Tecnico 3', 2),
	(timestamp '2054-8-11 6:50:47', 'Evento Tecnico 4', 2),
	(timestamp '2077-10-29 5:6:58', 'Evento Administrativo 2', 0),
	(timestamp '2022-6-24 12:25:10', 'Evento Tecnico 5', 2),
	(timestamp '2061-10-15 2:28:17', 'Evento Tecnico 6', 2),
	(timestamp '2019-10-23 8:42:1', 'Evento Administrativo 3', 0),
	(timestamp '2052-10-31 20:19:30', 'Evento de RH 1', 1),
	(timestamp '2041-3-12 22:24:2', 'Evento de RH 2', 1),
	(timestamp '2025-9-7 21:33:42', 'Evento Tecnico 7', 2);

INSERT INTO ep3_tarefa VALUES
	('Criar cadastro de entrevista', 'Undone', 1),
	('Verificar quantidade de setores adm da empresa', 'Done', 0);

INSERT INTO ep3_forum VALUES
	(0, 0),
	(1, 1),
	(2, 2);

INSERT INTO ep3_topico VALUES
	('topico 471', current_timestamp, FALSE, 2),
	('topico 361', current_timestamp, FALSE, 2),
	('topico 679', current_timestamp, FALSE, 1),
	('topico 595', current_timestamp, FALSE, 2),
	('topico 458', current_timestamp, FALSE, 2),
	('topico 724', current_timestamp, TRUE, 2),
	('topico 932', current_timestamp, TRUE, 1),
	('topico 936', current_timestamp, FALSE, 1),
	('topico 190', current_timestamp, FALSE, 0);

INSERT INTO ep3_mensagem VALUES
	('0', 'Mensagem 0', current_timestamp, 'topico 932', 1, 'Marco_Pedro551@mac350.com'),
	('1', 'Mensagem 1', current_timestamp, 'topico 190', 0, 'Marco_Carlos68@mac350.com'),
	('2', 'Mensagem 2', current_timestamp, 'topico 471', 2, 'Carlos_Carlos747@mac350.com'),
	('3', 'Mensagem 3', current_timestamp, 'topico 471', 2, 'Eduardo_Carlos709@mac350.com'),
	('4', 'Mensagem 4', current_timestamp, 'topico 724', 2, 'Carlos_Marco603@mac350.com'),
	('5', 'Mensagem 5', current_timestamp, 'topico 190', 0, 'Eduardo_Carlos709@mac350.com'),
	('6', 'Mensagem 6', current_timestamp, 'topico 932', 1, 'Marco_Pedro551@mac350.com'),
	('7', 'Mensagem 7', current_timestamp, 'topico 679', 1, 'Marco_Pedro551@mac350.com'),
	('8', 'Mensagem 8', current_timestamp, 'topico 679', 1, 'Carlos_Marco56@mac350.com'),
	('9', 'Mensagem 9', current_timestamp, 'topico 471', 2, 'Carlos_Carlos747@mac350.com'),
	('10', 'Mensagem 10', current_timestamp, 'topico 471', 2, 'Felipe_Marco273@mac350.com'),
	('11', 'Mensagem 11', current_timestamp, 'topico 724', 2, 'Carlos_Carlos747@mac350.com'),
	('12', 'Mensagem 12', current_timestamp, 'topico 190', 0, 'Carlos_Carlos747@mac350.com'),
	('13', 'Mensagem 13', current_timestamp, 'topico 932', 1, 'Gustavo_Antonio573@mac350.com'),
	('14', 'Mensagem 14', current_timestamp, 'topico 932', 1, 'Eduardo_Carlos709@mac350.com'),
	('15', 'Mensagem 15', current_timestamp, 'topico 471', 2, 'Felipe_Marco273@mac350.com'),
	('16', 'Mensagem 16', current_timestamp, 'topico 190', 0, 'Eduardo_Carlos709@mac350.com'),
	('17', 'Mensagem 17', current_timestamp, 'topico 936', 1, 'Marco_Carlos68@mac350.com'),
	('18', 'Mensagem 18', current_timestamp, 'topico 932', 1, 'Carlos_Carlos747@mac350.com'),
	('19', 'Mensagem 19', current_timestamp, 'topico 932', 1, 'Carlos_Marco56@mac350.com'),
	('20', 'Mensagem 20', current_timestamp, 'topico 936', 1, 'Eduardo_Carlos709@mac350.com'),
	('21', 'Mensagem 21', current_timestamp, 'topico 190', 0, 'Carlos_Marco603@mac350.com'),
	('22', 'Mensagem 22', current_timestamp, 'topico 936', 1, 'Felipe_Henrique418@mac350.com'),
	('23', 'Mensagem 23', current_timestamp, 'topico 936', 1, 'Felipe_Henrique418@mac350.com'),
	('24', 'Mensagem 24', current_timestamp, 'topico 936', 1, 'Marco_Carlos68@mac350.com'),
	('25', 'Mensagem 25', current_timestamp, 'topico 471', 2, 'Marco_Carlos68@mac350.com'),
	('26', 'Mensagem 26', current_timestamp, 'topico 471', 2, 'Gustavo_Antonio573@mac350.com');


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








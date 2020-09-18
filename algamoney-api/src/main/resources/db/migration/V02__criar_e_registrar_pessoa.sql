CREATE TABLE pessoa (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    ativo VARCHAR(1) NOT NULL,
    logradouro VARCHAR(50),
    numero VARCHAR(6),
    complemento VARCHAR(20),
    bairro VARCHAR(20),
    cep VARCHAR(10),
    cidade VARCHAR(20),
    estado VARCHAR(2)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado) values ('Rayssa', '1', 'José Firmino Ferreira', '315','casa', 'Manaira', '58059-220', 'recife', 'PE' );
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)  values ('Eric', '0', 'Rua da lua', '14', 'apto 15', 'Toto' ,'58059-221', 'João Pessoa', 'PB' );
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)  values ('Victor', '1', 'Josefa Taveira', '345', 'casa b', 'Bessa', '58059-222', 'Maceio', 'AL' );
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)  values ('Mily', '1', 'Leopoldo Pereira', '56', 'casa', 'Bancarios','58059-223', 'Natal', 'RN' );
INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)  values ('Vicky', '0', 'Lima dos santos', '34', 'casa', 'Mangabeira', '58059-224', 'Recife', 'PE');
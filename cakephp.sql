CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    created DATETIME,
    modified DATETIME
);

CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    autor_id INT NOT NULL,
    titulo VARCHAR(50),
    descricao TEXT,
    isbn VARCHAR(10),
    created DATETIME,
    modified DATETIME,
    FOREIGN KEY autor_key (autor_id) REFERENCES autores(id)
);

CREATE TABLE generos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255),
    created DATETIME,
    modified DATETIME,
    UNIQUE KEY (descricao)
);

CREATE TABLE livros_generos (
    livro_id INT NOT NULL,
    genero_id INT NOT NULL,
    PRIMARY KEY (livro_id, genero_id),
    INDEX genero_idx (genero_id, livro_id),
    FOREIGN KEY genero_key(genero_id) REFERENCES generos(id),
    FOREIGN KEY livro_key(livro_id) REFERENCES livros(id)
);
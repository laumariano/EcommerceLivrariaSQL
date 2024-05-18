CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    link_download VARCHAR(255)
);

INSERT INTO produtos (nome, preco, tipo, descricao, link_download)
VALUES
    ('Livro 1', 1000.00, 'fisico', 'Descrição do Livro 1', NULL),
    ('Livro 2', 500.00, 'fisico', 'Descrição do Livro 2', NULL),
    ('Livro 3', 200.00, 'fisico', 'Descrição do Livro 3', NULL),
    ('Livro 4', 70.00, 'fisico', 'Descrição do Livro 4', NULL),
    ('E-book 1', 20.00, 'digital', NULL, 'https://siteloja.com/ebook1'),
    ('E-book 2', 30.00, 'digital', NULL, 'https://siteloja.com/ebook2'),
    ('E-book 3', 40.00, 'digital', NULL, 'https://siteloja.com/ebook3'),
    ('E-book 4', 52.00, 'digital', NULL, 'https://siteloja.com/ebook4'),
    ('CD de Áudio 1', 15.00, 'fisico', 'Descrição do CD de Áudio 1', NULL),
    ('CD de Áudio 2', 25.00, 'fisico', 'Descrição do CD de Áudio 2', NULL);

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos
SET preco = 300.00
WHERE id = 3;

UPDATE produtos
SET nome = CONCAT(nome, ' (Edição rara)')
WHERE preco > 500;

CREATE TABLE usuario (
    id_usuario VARCHAR PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    senha VARCHAR(100),
    telefone VARCHAR(20),
    admin BOOLEAN,
    excluido BOOLEAN,
    data_exclusao TIMESTAMP,
    imagem VARCHAR(255),
    fk_compra VARCHAR
);

CREATE TABLE produto (
    id_produto INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    valor_unitario NUMERIC,
    excluido BOOLEAN,
    data_exclusao TIMESTAMP,
    imagem VARCHAR(255),
    fk_entrada VARCHAR
);

CREATE TABLE entrada (
    id_entrada VARCHAR PRIMARY KEY,
    quantidade INTEGER,
    custo_unitario NUMERIC,
    obs VARCHAR,
    data_entrada TIMESTAMP
);

CREATE TABLE compra (
    id_compra VARCHAR PRIMARY KEY,
    status VARCHAR,
    data TIMESTAMP,
    acrescimo_total NUMERIC,
    sessao VARCHAR(10)
);

CREATE TABLE compra_produto (
    fk_compra_id_compra VARCHAR,
    fk_produto_id_produto INTEGER,
    valor_unitario NUMERIC,
    quantidade SMALLINT
);
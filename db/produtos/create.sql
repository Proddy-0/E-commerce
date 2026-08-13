CREATE TABLE produto (
    id_produto VARCHAR PRIMARY KEY,
    nome CHARACTER,
    descricao CHARACTER,
    valor_unitario NUMERIC,
    excluido BOOLEAN,
    data_exclusao TIMESTAMP,
    imagem CHARACTER,
    fk_entrada VARCHAR
);

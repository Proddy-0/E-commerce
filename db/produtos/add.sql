select * from produto;

INSERT INTO produto (
    id_produto,
    nome,
    descricao,
    valor_unitario,
    excluido,
    data_exclusao,
    imagem
)
VALUES (
	
	'Anel',
    'Anel descrição',
    12.2,
    FALSE,
    NULL,
    'a'
)

ALTER TABLE produto 
ALTER COLUMN id_produto ADD GENERATED ALWAYS AS IDENTITY;
    -- =========================
-- ENTRADA (sem dependências)
-- =========================
INSERT INTO entrada (id_entrada, quantidade, custo_unitario, obs, data_entrada) VALUES
('ENT001', 50, 10.50, 'Compra fornecedor A', '2026-01-05 09:00:00'),
('ENT002', 30, 22.00, 'Reposição estoque', '2026-01-10 14:30:00'),
('ENT003', 100, 5.75, 'Lote promocional', '2026-01-15 11:00:00'),
('ENT004', 20, 45.90, 'Peças importadas', '2026-02-01 08:15:00'),
('ENT005', 60, 12.30, 'Fornecedor B', '2026-02-05 10:45:00'),
('ENT006', 15, 89.99, 'Itens de luxo', '2026-02-10 16:20:00'),
('ENT007', 80, 3.20, 'Reposição rápida', '2026-02-15 09:30:00'),
('ENT008', 40, 18.75, 'Nova coleção', '2026-03-01 13:00:00'),
('ENT009', 25, 33.40, 'Lote especial', '2026-03-05 15:10:00'),
('ENT010', 70, 7.60, 'Compra mensal', '2026-03-10 10:00:00');

-- =========================
-- COMPRA (sem dependências)
-- =========================
INSERT INTO compra (id_compra, status, data, acrescimo_total, sessao) VALUES
('CMP001', 'finalizada', '2026-01-06 10:00:00', 0.00, 'A'),
('CMP002', 'pendente', '2026-01-11 15:00:00', 5.00, 'B'),
('CMP003', 'finalizada', '2026-01-16 12:00:00', 0.00, 'A'),
('CMP004', 'cancelada', '2026-02-02 09:00:00', 0.00, 'C'),
('CMP005', 'finalizada', '2026-02-06 11:30:00', 10.00, 'B'),
('CMP006', 'pendente', '2026-02-11 17:00:00', 0.00, 'A'),
('CMP007', 'finalizada', '2026-02-16 10:20:00', 2.50, 'C'),
('CMP008', 'finalizada', '2026-03-02 14:00:00', 0.00, 'B'),
('CMP009', 'cancelada', '2026-03-06 16:00:00', 0.00, 'A'),
('CMP010', 'finalizada', '2026-03-11 11:00:00', 7.00, 'C');

-- =========================
-- PRODUTO (depende de ENTRADA)
-- id_produto é auto incremento (IDENTITY), então não é informado
-- =========================
INSERT INTO produto (nome, descricao, valor_unitario, excluido, data_exclusao, imagem, fk_entrada) VALUES
('Anel', 'Anel folheado a ouro', 29.90, FALSE, NULL, 'anel.png', 'ENT001'),
('Colar', 'Colar prata 925', 49.90, FALSE, NULL, 'colar.png', 'ENT002'),
('Brinco', 'Brinco pequeno dourado', 19.90, FALSE, NULL, 'brinco.png', 'ENT003'),
('Pulseira', 'Pulseira ajustável', 24.90, FALSE, NULL, 'pulseira.png', 'ENT004'),
('Relógio', 'Relógio analógico', 129.90, FALSE, NULL, 'relogio.png', 'ENT005'),
('Tornozeleira', 'Tornozeleira delicada', 15.90, FALSE, NULL, 'tornozeleira.png', 'ENT006'),
('Piercing', 'Piercing de titânio', 9.90, FALSE, NULL, 'piercing.png', 'ENT007'),
('Broche', 'Broche floral', 34.90, FALSE, NULL, 'broche.png', 'ENT008'),
('Corrente', 'Corrente masculina', 59.90, FALSE, NULL, 'corrente.png', 'ENT009'),
('Berloque', 'Berloque em formato de coração', 12.90, FALSE, NULL, 'berloque.png', 'ENT010');

-- =========================
-- USUARIO (depende de COMPRA)
-- =========================
INSERT INTO usuario (id_usuario, nome, email, senha, telefone, admin, excluido, data_exclusao, imagem, fk_compra) VALUES
('USR001', 'Ana Souza', 'ana@email.com', 'senha123', '14999990001', FALSE, FALSE, NULL, 'ana.png', 'CMP001'),
('USR002', 'Bruno Lima', 'bruno@email.com', 'senha123', '14999990002', FALSE, FALSE, NULL, 'bruno.png', 'CMP002'),
('USR003', 'Carla Dias', 'carla@email.com', 'senha123', '14999990003', TRUE, FALSE, NULL, 'carla.png', 'CMP003'),
('USR004', 'Diego Alves', 'diego@email.com', 'senha123', '14999990004', FALSE, FALSE, NULL, 'diego.png', 'CMP004'),
('USR005', 'Elisa Mendes', 'elisa@email.com', 'senha123', '14999990005', FALSE, FALSE, NULL, 'elisa.png', 'CMP005'),
('USR006', 'Fábio Rocha', 'fabio@email.com', 'senha123', '14999990006', FALSE, FALSE, NULL, 'fabio.png', 'CMP006'),
('USR007', 'Gabriela Nunes', 'gabriela@email.com', 'senha123', '14999990007', FALSE, FALSE, NULL, 'gabriela.png', 'CMP007'),
('USR008', 'Hugo Martins', 'hugo@email.com', 'senha123', '14999990008', FALSE, FALSE, NULL, 'hugo.png', 'CMP008'),
('USR009', 'Isabela Costa', 'isabela@email.com', 'senha123', '14999990009', FALSE, FALSE, NULL, 'isabela.png', 'CMP009'),
('USR010', 'João Pedro', 'joao@email.com', 'senha123', '14999990010', TRUE, FALSE, NULL, 'joao.png', 'CMP010');

-- =========================
-- COMPRA_PRODUTO (depende de COMPRA e PRODUTO)
-- ATENÇÃO: fk_produto_id_produto assume que os produtos acima
-- foram inseridos em uma tabela vazia e ficaram com id 1 a 10
-- =========================
INSERT INTO compra_produto (fk_compra_id_compra, fk_produto_id_produto, valor_unitario, quantidade) VALUES
('CMP001', 1, 29.90, 2),
('CMP002', 2, 49.90, 1),
('CMP003', 3, 19.90, 3),
('CMP004', 4, 24.90, 1),
('CMP005', 5, 129.90, 1),
('CMP006', 6, 15.90, 4),
('CMP007', 7, 9.90, 5),
('CMP008', 8, 34.90, 2),
('CMP009', 9, 59.90, 1),
('CMP010', 10, 12.90, 3);
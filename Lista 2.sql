-- 1. Incluir linhas na tabela ESTADO
--sg_Estado	nm_Estado
--SP		SÃO PAULO
--RJ		RIO DE JANEIRO

--1ª FORMA .: no PDF as colunas estão entre colchetes [], porém, na literatura, significa que aquele apontamento é opcional, ou seja, a informação dentro do [] é opcional de colocar na sintaxe do script. 
-- Caso opte por inserir a informação, na sintaxe, não se deve utilizar os colchetes e sim parenteses.

INSERT INTO Estado (sg_Estado, nm_Estado)
VALUES ('SP', 'SÃO PAULO');
go

INSERT INTO Estado (sg_Estado, nm_Estado)
VALUES ('RJ', 'RIO DE JANEIRO');
go

SELECT * FROM Estado

--OU 2ª FORMA--
INSERT INTO Estado VALUES ('SP', 'SÃO PAULO');
go

INSERT INTO Estado VALUES ('RJ', 'RIO DE JANEIRO');
go

--OU 3ª FORMA--
INSERT INTO Estado VALUES ('SP', 'SÃO PAULO'),
('RJ', 'RIO DE JANEIRO');
go

-- 2. Incluir linhas na tabela CIDADE

INSERT INTO Cidade VALUES (1, 'SP', 'SÃO PAULO');
INSERT INTO Cidade VALUES (2, 'SP', 'SANTO ANDRÉ');
INSERT INTO Cidade VALUES (3, 'SP', 'CAMPINAS');
INSERT INTO Cidade VALUES (1, 'RJ', 'RIO DE JANEIRO');
INSERT INTO Cidade VALUES (2, 'RJ', 'NITEROI');
go

-- 3. Incluir linhas na tabela BAIRRO

INSERT INTO Bairro VALUES (1, 1, 'SP', 'JARDINS');
INSERT INTO	Bairro VALUES (2, 1, 'SP', 'MORUMBI');
INSERT INTO Bairro VALUES (3, 1, 'SP', 'AEROPORTO');
INSERT INTO Bairro VALUES (1, 1, 'RJ', 'AEROPORTO');
INSERT INTO Bairro VALUES (2, 2, 'RJ', 'NITEROI');
go

-- 4. Incluir linhas na tabela VENDEDOR
INSERT INTO Vendedor (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email)
VALUES (1, 'MARIA DA SILVA', 'RUA DO GRITO, 45', 'msilva@nova.com');
INSERT INTO Vendedor (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email)
VALUES (2, 'MARCO ANDRADE', 'AV. DA SAUDADE, 325', 'mandrade@nova.com');
INSERT INTO Vendedor (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email)
VALUES (3, 'ANDRÉ CARDOSO', 'AV. BRASIL, 401', 'acardoso@nova.com');
INSERT INTO Vendedor (cd_Vendedor, nm_Vendedor, ds_Endereco, ds_Email)
VALUES (4, 'TATIANA SOUZA', 'RUA DO IMPERADOR, 778', 'tsouza@nova.com');
go


-- 5. Incluir linhas na tabela IMOVEL

INSERT INTO Imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_preco)
VALUES (1, 1, 1, 1, 'SP', 'AL.TIETE,3304/101', 250, 400, 180000);
INSERT INTO Imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_preco)
VALUES (2, 1, 2, 1, 'SP', 'AV.MORUMBI, 2230', 150, 250, 135000);
INSERT INTO Imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_preco)
VALUES (3, 2, 1, 1, 'RJ', 'R. GAL. OSORIO, 445/34', 250, 400, 185000);
INSERT INTO Imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_preco)
VALUES (4, 2, 2, 2, 'RJ', 'R. D. PEDRO I, 882', 120, 200, 110000);
INSERT INTO Imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_preco)
VALUES (5, 3, 3, 1, 'SP', 'AV. RUBEN BERTA, 2355', 110, 200, 95000);
INSERT INTO Imovel (cd_Imovel, cd_Vendedor, cd_Bairro, cd_Cidade, sg_Estado, ds_Endereco, qt_AreaUtil, qt_AreaTotal, vl_preco)
VALUES (6, 4, 1, 1, 'RJ', 'R. GETULIO VARGAS, 552', 200, 300, 99000);
go


-- 6. Incluir linhas na tabela COMPRADOR

INSERT INTO Comprador (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email)
VALUES (1, 'EMMANUEL ANTUNES', 'R. SARAIVA, 452', 'eantunes@nova.com');
INSERT INTO Comprador (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email)
VALUES (2, 'JOANA PEREIRA', 'AV. PORTUGAL, 52', 'jpereira@nova.com');
INSERT INTO Comprador (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email)
VALUES (3, 'RONALDO CAMPELO', 'R. ESTADOS UNIDOS, 13', 'rcampelo@nova.com');
INSERT INTO Comprador (cd_Comprador, nm_Comprador, ds_Endereco, ds_Email)
VALUES (4, 'MANFRED AUGUSTO', 'AV. BRASIL, 351', 'maugusto@nova.com');
go

-- 7. Incluir linhas na tabela OFERTA
select * from Oferta
INSERT INTO Oferta VALUES (1, 1, 170000, '10/01/09');
INSERT INTO Oferta VALUES (1, 3, 180000, '10/01/09');
INSERT INTO Oferta VALUES (2, 2, 135000, '15/01/09');
INSERT INTO Oferta VALUES (2, 4, 100000, '15/02/09');
INSERT INTO Oferta VALUES (3, 1, 160000, '05/01/09');
INSERT INTO Oferta VALUES (3, 2, 140000, '20/02/09');
go


-- 8. Aumente o preço de vendas dos imóveis em 10%
UPDATE Imovel
	SET vl_preco = vl_preco * 1.10
go

-- 9. Abaixe o preço de venda dos imóveis do vendedor 1 em 5%
UPDATE Imovel
	SET vl_preco = vl_preco * 0.95
	where cd_Vendedor = 1
go

-- 10. Aumente em 5% o valor das ofertas do comprador 2
UPDATE Oferta
	SET vl_Oferta = vl_Oferta * 1.05
	where cd_Comprador = 2
go
	
-- 11. Altere o endereço do comprador 3 para R. ANANÁS, 45 e o estado para RJ
UPDATE Comprador
	SET ds_Endereco = 'R. ANANÁS, 45', sg_Estado = 'RJ'
	where cd_Comprador = 3
go

-- 12. Altere a oferta do comprador 2 no imóvel 4 para 101.000
UPDATE Oferta
	SET vl_Oferta = 101000.00
	where cd_Comprador = 2 and cd_Imovel = 4
go

-- 13. Exclua a oferta do comprador 3 no imóvel 1
DELETE from Oferta
	where cd_Comprador = 3 and cd_Imovel = 1
go

-- 14. Exclua a cidade 3 do estado SP
DELETE from Cidade
	where cd_Cidade = 3
go

-- 15. Inclua linhas na tabela FAIXA_IMOVEL:
INSERT INTO Faixa_Imovel (cd_Faixa, nm_Faixa, vl_Minimo, vl_Maximo)
VALUES (1, 'BAIXO', 0, 105000);
INSERT INTO Faixa_Imovel (cd_Faixa, nm_Faixa, vl_Minimo, vl_Maximo)
VALUES (2, 'MÉDIO', 105001, 180000);
INSERT INTO Faixa_Imovel (cd_Faixa, nm_Faixa, vl_Minimo, vl_Maximo)
VALUES (3, 'ALTO', 180001, 999999);
go

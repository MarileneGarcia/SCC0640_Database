select A.Titulo, A.Tipo, A.Descricao, P.Local, P.DataHor, P.Duracao, T.Capacidade, T.Acessibilidade, B.Assunto 
from Atividade A join Palestra P on A.Titulo = P.Atividade join Anfiteatro T on P.Local = T.Nome join AssuntoPalestra B on B.Atividade = P.Atividade
order by A.Titulo;
-- Info de palestras

select A.Titulo, A.Tipo, A.Descricao, D.Local,D.DataHor, D.Duracao, T.Capacidade, T.Acessibilidade, B.Assunto 
from Atividade A join Debate D on A.Titulo = D.Atividade join Anfiteatro T on D.Local = T.Nome join AssuntoDebate B on B.Atividade = D.Atividade
order by A.Titulo;
-- Info de debates

select C.Atividade, C.Tema, C.Brinde, E.DatHorInicio, E.Duracao, E.AreaExpo, E.NumSlot, X.Expositor
from Atracao C inner join InfoAtracao E on C.Atividade = E.Atracao inner join Exposicao X on X.Atracao = C.Atividade
order by C.Atividade;
-- Info de atrações

select A.Titulo, A.Tipo, A.Descricao, P.Local, P.DataHor, P.Duracao, T.Capacidade, T.Acessibilidade, B.Assunto 
from Atividade A join Palestra P on A.Titulo = P.Atividade join Anfiteatro T on P.Local = T.Nome join AssuntoPalestra B on B.Atividade = P.Atividade
union
select H.Titulo, H.Tipo, H.Descricao, D.Local,D.DataHor, D.Duracao, A.Capacidade, A.Acessibilidade, R.Assunto 
from Atividade H join Debate D on H.Titulo = D.Atividade join Anfiteatro A on D.Local =A.Nome join AssuntoDebate R on R.Atividade = D.Atividade
order by Tipo;
-- Info de palestras e debates (atração não entra por ter atributos diferentes)

SELECT atividade titulo FROM (SELECT * FROM   atividade) atividade
JOIN ( SELECT  atividade,instituicao FROM parceria) parceria
ON atividade.titulo = parceria.atividade
WHERE parceria.Instituicao = 328741785;
--atividades realizadas em parceria com a empresa "Dumativa"

SELECT * FROM Produto 
Where Empresa = 328741785;
--Produtos expostos pela empresa "Dumativa"

select A.CodigoInscricao, A.CPF, A.Nome, E.Atracao, D.Titulo 
from Associado A join Exposicao E on A.CodigoInscricao = E.Expositor 
left join TipoAssociados T on A.CodigoInscricao = T.Associado
join Atividade D on T.Atividade = D.Titulo
where A.Instituicao = 328741369
order by A.Nome;
--Os associados da Ubisoft LATAM e em que atividades eles estão participando, ordenado por associado

select D.Atividade, D.DataHor, A.Nome from Debate D join Anfiteatro A on D.Local = A.Nome
union
select P.Atividade, P.DataHor, A.Nome from Palestra P join Anfiteatro A on P.Local = A.Nome
order by Nome, DataHor;
--O cronograma de atividades de cada anfiteatro

select A.Titulo, S.Nome
from Associado S join TipoAssociados T on S.CodigoInscricao = T.Associado join Atividade A on T.Atividade = A.Titulo 
order by Titulo, Nome;
--Os oradores de cada atividade

select count(P.*), A.Titulo from Participacao P join Atividade A on A.Titulo = P.Atividade group by A.Titulo;
--O número de participantes em uma determinada atividade

select P.CodigoInscricao, P.Nome, A.Atividade
from Participante P join Participacao A on P.CodigoInscricao = A.PArticipante
order by Nome;
--Todas as atividades que um participante assiste

select O.Nome, count(P.*) as "Num Produtos" 
from ONG O join ProjetoONG P on O.Instituicao = P.ONG 
group by O.Nome
union
select U.Nome, count(P.*) as "Num Produtos" 
from Universidade U join ProjetoUniversidade P on U.Instituicao = P.Universidade
group by U.Nome
union
select E.Nome, count(P.*) as "Num Produtos" 
from Empresa E join Produto P on E.Instituicao = P.Empresa
group by E.Nome; 
--Quantos projetos ou produtos de cada tipo de instituição é exposto

select Nome, Valor from Empresa where Valor > 30000;
--Quais empresas com valor de mercado acima de  30000 participam em cada atividade

select D.Atividade, A.Assunto, R.Tipo
from Debate D join AssuntoDebate A on D.Atividade = A.Atividade left join Atividade R on D.Atividade = R.Titulo
where A.Assunto like 'História'
union
select P.Atividade, A.Assunto, R.Tipo
from Palestra P join AssuntoPalestra A on P.Atividade = A.Atividade left join Atividade R on P.Atividade = R.Titulo
where A.Assunto like 'História'
union
select T.Atividade, T.Tema, R.Tipo
from Atracao T join Atividade R on R.Titulo = T.Atividade
where T.Tema like 'História'
order by Tipo;
--Pesquisa de atividades por certo assunto (História por exemplo)
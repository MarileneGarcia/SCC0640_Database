insert into Anfiteatro values ('Inova Stage','Aberto' , 5000, 'Cadeira, palco', 'Rampas, Corrimões, Iluminação nas escadas', true, false, false);
insert into Anfiteatro values ('Arena Mundo', 'Fechado', 700, 'Cadeira, palco', 'Rampas, poltronas especiais', true, true, true);
insert into Anfiteatro values ('Arena Social', 'Fechado', 1000, 'Cadeira, palco baixo', 'Rampas, Corrimões, Poltronas especiais', true, false, true);

insert into Instituicao values (358741235, 'Empresa', 'wwww.robozao.com.br');
insert into Instituicao values (328741365, 'Empresa', 'wwww.pmaodada.com.br');
insert into Instituicao values (328741789, 'Empresa', 'wwww.gdasa.com.br');
insert into Instituicao values (328741415, 'Empresa', 'wwww.renature.com.br');
insert into Instituicao values (328741654, 'Empresa', 'wwww.agilis.com.br');
insert into Instituicao values (328741321, 'Empresa', 'wwww.museuamanha.com.br');
insert into Instituicao values (328741369, 'Empresa', 'wwww.ubisoftlatam.com.br');
insert into Instituicao values (328741785, 'Empresa', 'wwww.dumativa.com.br');

insert into Empresa values (358741235, 'Robozão', 5000000);
insert into Empresa values (328741365, 'Projeto Mão Dada', 7000000);
insert into Empresa values (328741789, 'Grupo DASA', 9000000);
insert into Empresa values (328741654, 'reNature', 20000000);
insert into Empresa values (328741321, 'Agilis Partners', 10000000);
insert into Empresa values (328741369, 'Museu do Amanhã', 50000000);
insert into Empresa values (328741415, 'ubisoft LATAM', 60000000);
insert into Empresa values (328741785, 'Dumativa', 4000000);

insert into Instituicao values (328743785, 'Universidade', 'wwww.usp.com.br');
insert into Instituicao values (328741783, 'Universidade', 'wwww.unesp.com.br');
insert into Instituicao values (328741782, 'Universidade', 'wwww.uscs.com.br');
insert into Instituicao values (328741781, 'Universidade', 'wwww.ufscar.com.br');
insert into Instituicao values (328741784, 'Universidade', 'wwww.pucrio.com.br');

insert into Universidade values (328743785, 'USP', 'SP', 'Estadual');
insert into Universidade values (328741783, 'UNESP', 'SP', 'Estadual');
insert into Universidade values (328741782, 'USCS', 'SP', 'Municipal');
insert into Universidade values (328741781, 'UFSCAR', 'SP', 'Federal');
insert into Universidade values (328741784, 'PUC-RIO', 'RJ', 'Privada');

insert into Instituicao values (328741756, 'ONG', 'wwww.institutoamazonia.com.br');
insert into Instituicao values (328741727, 'ONG', 'wwww.rededigitalsol.com.br');
insert into Instituicao values (328741721, 'ONG', 'wwww.vivario.com.br');
insert into Instituicao values (328742749, 'ONG', 'wwww.aacd.com.br');


insert into ONG values (328741756, 'Instituto Amazonia', 'Meio Ambiente');
insert into ONG values (328741727, 'Rede Digital Sol', 'Meio Ambiente');
insert into ONG values (328741721, 'Viva Rio', 'Inclusão digital');
insert into ONG values (328742749, 'AACD', 'Medicina');

insert into Atividade values ('A história do Robozão', 'Palestra');
insert into Palestra values ('A história do Robozão', 'Inova Stage', TO_DATE('25/07/2019 11:00:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoPalestra values ('A história do Robozão', 'Robótica');
insert into AssuntoPalestra values ('A história do Robozão', 'História');
insert into Associado values (78262659, 63841929, '4859595-x', 'SP', 'Roberto da Silva', 358741235, '');
insert into TipoAssociados values (78262659, 'A história do Robozão', 'Palestrante');

insert into Atividade  values ('Como funcionam as impressões e imagens 3D na medicina?', 'Debate', '');
insert into Debate values ('Como funcionam as impressões e imagens 3D na medicina?', 'Inova Stage', TO_DATE('25/07/2019 11:40:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoDebate values ('Como funcionam as impressões e imagens 3D na medicina?', 'Impressão 3D');
insert into AssuntoDebate values ('Como funcionam as impressões e imagens 3D na medicina?', 'Medicina');
insert into Associado  values (78262669, 846942635, '9694365-4', 'RJ', 'Olga Campos Saadi', 328741365, '');
insert into TipoAssociados  values (78262669, 'Como funcionam as impressões e imagens 3D na medicina?', 'Palestrante');
insert into Associado  values (78262674, 569473651, '1456358-4', 'RS', 'Heron Werner Junior', 328741789, '');
insert into TipoAssociados  values (78262674, 'Como funcionam as impressões e imagens 3D na medicina?', 'Palestrante');
insert into Associado values (78262676, 249326543, '7469215-0', 'SP', 'Dra. Eliane Grossi', 328741415, '');
insert into TipoAssociados values (78262676, 'Como funcionam as impressões e imagens 3D na medicina?', 'Moderador');


insert into Atividade  values ('Revolução na Agricultura', 'Palestra', '');
insert into Debate values ('Revolução na Agricultura', 'Inova Stage', TO_DATE('26/07/2019 12:20:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoDebate values ('Revolução na Agricultura', 'História');
insert into AssuntoDebate values ('Revolução na Agricultura', 'Agricultura');
insert into Associado values (78262684, 1536971589, '6531116-2', 'RJ', 'Felipe Villela', 328741654, '');
insert into TipoAssociados values (78262684, 'Revolução na Agricultura', 'Palestrante');
insert into Associado values (78262685, 964422001, '7936206-2', 'RJ', 'Eduardo Carlos Browne', 328741321, '');
insert into TipoAssociados values (78262685, 'Revolução na Agricultura', 'Palestrante');
insert into Associado values (78262687, 012526941, '3461527-7', 'SP', 'Leonardo Moraes Menezes', 328741369, '');
insert into TipoAssociados values (78262687, 'Revolução na Agricultura', 'Palestrante');


insert into Atividade values ('Jogos de empresas', 'Palestra', '');
insert into Palestra values ('Jogos de empresas', 'Arena Mundo', TO_DATE('23/07/2019 12:20:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoPalestra values ('Jogos de empresas', 'Jogos');
insert into TipoAssociados values (78262687, 'Jogos de empresas', 'Palestrante');


insert into Atividade values ('Ubisoft, Brasil e inovação', 'Palestra', '');
insert into Palestra values ('Ubisoft, Brasil e inovação', 'Inova Stage', TO_DATE('27/07/2019 14:20:00', 'DD/MM/YYYY HH24:MI:SS'), 30);
insert into AssuntoPalestra values ('Ubisoft, Brasil e inovação', 'Ubisoft');
insert into AssuntoPalestra values ('Ubisoft, Brasil e inovação', 'Brasil');
insert into AssuntoPalestra values ('Ubisoft, Brasil e inovação', 'Inovação');
insert into Associado values (78262698, 001456638, '785269-4', 'MG', 'Renan Ciardi Avolio', 328741415, '');
insert into TipoAssociados  values (78262698, 'Ubisoft, Brasil e inovação', 'Palestrante');


insert into Atividade values ('Além da lenda: a lenda do herói - Shield Maide', 'Palestra', '');
insert into Palestra values ('Além da lenda: a lenda do herói - Shield Maide', 'Inova Stage', TO_DATE('20/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoPalestra values ('Além da lenda: a lenda do herói - Shield Maide', 'História');
insert into Associado values (18262704, 560043453, '8564231-X', 'SP', 'Renato Fernandes', 328741785, '');
insert into TipoAssociados  values (18262704, 'Além da lenda: a lenda do herói - Shield Maide', 'Palestrante');
insert into Associado values (28262705, 563495235, '1456395-5', 'SP', 'Daniel Ximenes', 328741785, '');
insert into TipoAssociados values (28262705, 'Além da lenda: a lenda do herói - Shield Maide', 'Palestrante');


insert into Atividade values ('Como montar sua startup', 'Palestra', '');
insert into Palestra values ('Como montar sua startup', 'Arena Mundo', TO_DATE('24/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoPalestra values ('Como montar sua startup', 'empreendedorismo');
insert into Associado values (78262704, 560000453, '8564231-X', 'SP', 'Rafael Bastos', 328741785, '');
insert into TipoAssociados  values (78262704, 'Como montar sua startup', 'Palestrante');

insert into Atividade values ('O que estudar para fazer games?', 'Palestra', '');
insert into Palestra values ('O que estudar para fazer games?', 'Inova Stage', TO_DATE('29/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoPalestra values ('O que estudar para fazer games?', 'Educação');
insert into Associado values (78262724, 560041453, '8564271-X', 'SC', 'Felipe Eduardo', 328741785, '');
insert into TipoAssociados  values (78262724, 'O que estudar para fazer games?', 'Palestrante');

insert into Atividade values ('Games e apps de inclusão', 'Palestra', '');
insert into Palestra values ('Games e apps de inclusão', 'Arena Social', TO_DATE('28/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoPalestra values ('Games e apps de inclusão', 'jogos');
insert into AssuntoPalestra values ('Games e apps de inclusão', 'inclusão');
insert into TipoAssociados  values (78262704, 'Games e apps de inclusão', 'Palestrante');
insert into TipoAssociados  values (78262698, 'Games e apps de inclusão', 'Palestrante');
insert into Parceria values('Games e apps de inclusão', 328741785);
insert into Parceria values('Games e apps de inclusão', 328741415);

insert into Atividade values ('O movimento maker no Brasil', 'Palestra', '');
insert into Palestra values ('O movimento maker no Brasil', 'Arena Social', TO_DATE('30/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoPalestra values ('O movimento maker no Brasil', 'História');
insert into Associado values (78232704, 560043400, '8164231-X', 'SP', 'Marcela Silva', 328741789, '');
insert into TipoAssociados  values (78232704, 'O movimento maker no Brasil', 'Palestrante');

insert into Atividade values ('Mulheres no mundo dos games', 'Debate', '');
insert into Debate values ('Mulheres no mundo dos games', 'Arena Social', TO_DATE('25/07/2019 11:40:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoDebate values ('Mulheres no mundo dos games', 'História');
insert into AssuntoDebate values ('Mulheres no mundo dos games', 'Desigualdade de gênero');
insert into AssuntoDebate values ('Mulheres no mundo dos games', 'Games');
insert into Associado values (78272704, 500041453, '8565231-X', 'AM', 'Rafael Bastos', 328741784, '');
insert into TipoAssociados  values (78272704, 'Mulheres no mundo dos games', 'Palestrante');
insert into Associado values (082727041, 560041451, '8521233-X', 'PR', 'Fernanda Fernandes', 328741727, '');
insert into TipoAssociados  values (082727041, 'Mulheres no mundo dos games', 'Palestrante');
insert into Associado values (88727041, 560024531, '8521239-X', 'RS', 'Gabriela Souza', 328741727, '');
insert into TipoAssociados  values (88727041, 'Mulheres no mundo dos games', 'Moderador');
insert into Parceria values('Mulheres no mundo dos games', 328741784);
insert into Parceria values('Mulheres no mundo dos games', 328741727);

insert into Atividade values ('Lançamento PES2020', 'Debate', '');
insert into Debate values ('Lançamento PES2020', 'Inova Stage', TO_DATE('30/07/2019 11:40:00', 'DD/MM/YYYY HH24:MI:SS'), 40);
insert into AssuntoDebate values ('Lançamento PES2020', 'História');
insert into Associado values (78262700, 560022253, '8564232-X', 'PA', 'Henrique Feraz', 328741727, '');
insert into TipoAssociados  values (78262700, 'Lançamento PES2020', 'Palestrante');
insert into Associado values (38262700, 560023353, '8564239-X', 'RN', 'Dennis Aparecido', 328741727, '');
insert into TipoAssociados  values (38262700, 'Lançamento PES2020', 'Palestrante');
insert into Parceria values('Lançamento PES2020', 328741727);

insert into AreaExpo values ('Arena Expo Mundo', 3000, 'Coberta, Ar Condicionado, Iluminação noturna', 'Rampas, Corrimões nas escadas');
insert into AreaExpo values ('Arena Expo Brasil', 1500, 'Coberta, Ar Condicionado, Iluminação noturna', 'Rampas, Corrimões nas escadas');

insert into Slot values ('Arena Expo Mundo', 1, 10);
insert into Slot values ('Arena Expo Mundo', 2, 10);
insert into Slot values ('Arena Expo Mundo', 3, 10);
insert into Slot values ('Arena Expo Mundo', 4, 10);
insert into Slot values ('Arena Expo Mundo', 5, 10);
insert into Slot values ('Arena Expo Mundo', 6, 23);
insert into Slot values ('Arena Expo Mundo', 7, 10);
insert into Slot values ('Arena Expo Mundo', 8, 10);
insert into Slot values ('Arena Expo Mundo', 9, 14);
insert into Slot values ('Arena Expo Mundo', 10, 10);
insert into Slot values ('Arena Expo Mundo', 11, 15);

insert into Slot values ('Arena Expo Brasil', 1, 15);
insert into Slot values ('Arena Expo Brasil', 2, 14);
insert into Slot values ('Arena Expo Brasil', 3, 13);
insert into Slot values ('Arena Expo Brasil', 4, 15);
insert into Slot values ('Arena Expo Brasil', 5, 12);
insert into Slot values ('Arena Expo Brasil', 6, 15);
insert into Slot values ('Arena Expo Brasil', 7, 14);
insert into Slot values ('Arena Expo Brasil', 8, 15);
insert into Slot values ('Arena Expo Brasil', 9, 25);
insert into Slot values ('Arena Expo Brasil', 10, 15);

insert into Atividade values ('Inovando para gerar impacto', 'Atracao', '');
insert into Atracao values ('Inovando para gerar impacto', 'inovação', true);
insert into InfoAtracao values ('Inovando para gerar impacto', TO_DATE('24/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Mundo', 10);
insert into ProjetoUniversidade values ('Inovando para gerar impacto', 328741783, 'Inovando para gerar impacto', '');
insert into Exposicao values('Inovando para gerar impacto', 78262659);
insert into Exposicao values ('Inovando para gerar impacto', 78262669);

insert into Atividade values ('Junior developers', 'Atracao', '');
insert into Atracao values ('Junior developers', 'desenvolvimento', true);
insert into InfoAtracao values ('Junior developers', TO_DATE('24/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Brasil', 1);
insert into ProjetoUniversidade values ('Desencolvimento para menores', 328741784, 'Junior developers', '');
insert into Exposicao values ('Junior developers', 78262674);

insert into Atividade values ('A Tecnologia de PES2020', 'Atracao', '');
insert into Atracao values ('A Tecnologia de PES2020', 'jogos', true);
insert into InfoAtracao values ('A Tecnologia de PES2020', TO_DATE('24/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Mundo', 8);
insert into Produto values ('PES2020', 328741369, 'A Tecnologia de PES2020', '', TO_DATE('24/06/2019', 'DD/MM/YYYY '));
insert into Exposicao values ('A Tecnologia de PES2020', 78262676);

insert into Atividade values ('Games e construção civil: relações e oportunidades', 'Atracao', '');
insert into Atracao values ('Games e construção civil: relações e oportunidades', 'jogos', false);
insert into InfoAtracao values ('Games e construção civil: relações e oportunidades', TO_DATE('24/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Brasil', 1);
insert into ProjetoUniversidade values ('Games e construção civil: relações e oportunidade', 328741784, 'Games e construção civil: relações e oportunidades', '');
insert into Exposicao values ('Games e construção civil: relações e oportunidades', 78262684);

insert into Atividade values ('A nova era de hospitais conectados', 'Atracao', '');
insert into Atracao values ('A nova era de hospitais conectados', 'medicina', true);
insert into InfoAtracao values ('A nova era de hospitais conectados', TO_DATE('25/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Brasil', 2);
insert into ProjetoUniversidade values ('A nova era de hospitais conectados', 328743785, 'A nova era de hospitais conectados', '');
insert into Exposicao values ('A nova era de hospitais conectados', 78262687);
insert into Parceria values('A nova era de hospitais conectados', 328743785);

insert into Atividade values ('A jornada do executivo Jedi', 'Atracao', '');
insert into Atracao values ('A jornada do executivo Jedi', 'nerd', false);
insert into InfoAtracao values ('A jornada do executivo Jedi', TO_DATE('23/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Mundo', 3);
insert into ProjetoUniversidade values ('A jornada do executivo Jedi', 328743785, 'A jornada do executivo Jedi', '');
insert into Exposicao values ('A jornada do executivo Jedi', 88727041);

insert into Atividade values ('O turismo do futuro', 'Atracao', '');
insert into Atracao values ('O turismo do futuro', 'turismo', false);
insert into InfoAtracao values ('O turismo do futuro', TO_DATE('24/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Mundo', 4);
insert into ProjetoONG values ('O turismo do futuro', 328741727, 'O turismo do futuro', '');
insert into Exposicao values ('O turismo do futuro', 28262705);

insert into Atividade values ('Tecnologia para transformar vidas', 'Atracao', '');
insert into Atracao values ('Tecnologia para transformar vidas', 'transformação pessoal', true);
insert into InfoAtracao values ('Tecnologia para transformar vidas', TO_DATE('26/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Brasil', 7);
insert into ProjetoONG values ('Tecnologia para transformar vidas', 328741756, 'Tecnologia para transformar vidas', '');
insert into Exposicao values ('Tecnologia para transformar vidas', 38262700);

insert into Atividade values ('Smart money', 'Atracao', '');
insert into Atracao values ('Smart money', 'finanças', false);
insert into InfoAtracao values ('Smart money', TO_DATE('23/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Mundo', 5);
insert into ProjetoONG values ('Smart money', 328741756, 'Smart money', '');
insert into Exposicao values ('Smart money', 78232704);

insert into Atividade values ('Cases de sucesso do mercado de games brasileiros', 'Atracao', '');
insert into Atracao values ('Cases de sucesso do mercado de games brasileiros', 'mercado de trabalho', true);
insert into InfoAtracao values ('Cases de sucesso do mercado de games brasileiros', TO_DATE('21/07/2019 14:50:00', 'DD/MM/YYYY HH24:MI:SS'), 20, 'Arena Expo Brasil', 3);
insert into ProjetoONG values ('Mercado brasileiro', 328741727, 'Cases de sucesso do mercado de games brasileiros', '');
insert into Associado values (28262711, 523495235, '1156395-5', 'AC', 'Daniela Ximenes', 328741785, '');
insert into Exposicao values ('Cases de sucesso do mercado de games brasileiros', 28262711);
insert into Parceria values('Cases de sucesso do mercado de games brasileiros', 328741785);


insert into Participante values (12345678, 198723326, '1234567-x', 'RJ', 'Renato Garcia', 'Basico', 'rere@usp.br', '12345678901', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345671, 298723326, '1234567-x', 'SP', 'Renata Garcia', 'Intermediario', 'rere@usp.br', '12345678902', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345672, 398723326, '2234567-x', 'AM', 'Fernando Garcia', 'Basico', 'fefe@usp.br', '12345678900', 'Rua Episcocal, 31, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345673, 498723326, '3234567-x', 'RJ', 'Fernanda Garcia', 'Basico', 'fernandinha@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345674, 598723326, '4234567-x', 'RJ', 'Maria Garcia', 'Intermediario', 'omario@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345675, 698723326, '5234567-x', 'RJ', 'Mario Garcia', 'Basico', 'mario@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345676, 798723326, '6234567-x', 'SC', 'Maria Silva', 'Intermediario', 'silvamaria@usp.br', '12345672900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345677, 898723326, '7234567-x', 'PR', 'Maria Silva', 'Basico', 'mariasilva@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345679, 998723326, '8234567-x', 'RJ', 'Maria Silva', 'Intermediario', 'silvam@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345681, 018723326, '9234567-x', 'RJ', 'Maria Silva', 'Basico', 'smaria@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Superior');
insert into Participante values (12345618, 028723326, '1234567-x', 'TO', 'Maria Souza', 'Intermediario', 'rere@usp.br', '12345678300', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345628, 038723326, '1234567-x', 'AC', 'Maria Souza', 'Basico', 'marias@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345638, 048723326, '1234527-x', 'AM', 'Maria Souza', 'Intermediario', 'mariana@usp.br', '12345478900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345648, 058723326, '1234563-x', 'TO', 'Maria Souza', 'Basico', 'mariaaa@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345658, 068723326, '1234564-x', 'MT', 'João Pacheco', 'Basico', 'jao@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345668, 078723326, '1234566-x', 'GO', 'Joana Pacheco', 'Intermediario', 'ana@usp.br', '12345658900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345688, 088723326, '1234561-x', 'PR', 'Gabriel Pacheco', 'Intermediario', 'gabi@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345698, 098723326, '1234562-x', 'SC', 'Joana Pacheco', 'Basico', 'joana@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345608, 092723326, '1234569-x', 'SP', 'Bruna Pacheco', 'Intermediario', 'bruna@usp.br', '12545678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345178, 093723326, '1234568-x', 'AM', 'Joana Pacheco', 'Premium', 'jojo@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345278, 091723326, '1234267-x', 'AC', 'Juliana Garcia', 'Basico', 'xuxu@usp.br', '12345578900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345378, 094723326, '1234537-x', 'ES', 'Julio Garcia', 'Basico', 'julio@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345478, 095723326, '1234517-x', 'SP', 'Pedro Garcia', 'Premium', 'pedroca@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345578, 096723326, '1234587-x', 'PR', 'Samira Garcia', 'Basico', 'mira@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345078, 097723326, '1234547-x', 'PA', 'Pedro Garcia', 'Premium', 'pedro@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12345978, 099723326, '1224567-x', 'BA', 'Renato Garcia', 'Premium', 'rerenato@usp.br', '12345678900', 'Rua Episcocal, 32, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12341678, 098123326, '1294567-x', 'PE', 'Mateus Garcia', 'Premium', 'mateus@usp.br', '12345678900', 'Rua Episcocal, 37, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12342678, 098223326, '1284567-x', 'BA', 'Leandro Fernandes', 'Premium', 'leandro@usp.br', '12345678900', 'Rua Episcocal, 38, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12343678, 098323326, '1274567-x', 'RN', 'Luisa Fernandes', 'Premium', 'luisa@usp.br', '12345678900', 'Rua Episcocal, 37, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12344678, 098423326, '1264567-x', 'GO', 'Breno Fernandes', 'Premium', 'breno@usp.br', '12345678900', 'Rua Episcocal, 36, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12315678, 098523326, '1214567-x', 'MS', 'Bruno Fernandes', 'Premium', 'bruno@usp.br', '12345678900', 'Rua Episcocal, 36, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12325678, 098623326, '1282567-x', 'MT', 'Rita Garcia', 'Premium', 'rita@usp.br', '12345678900', 'Rua Episcocal, 35, São Carlos, Brasil', 34, 'Ensino Superior Completo');
insert into Participante values (12347678, 098723344, '1232564-x', 'ES', 'Cristina Fernandes', 'Basico', 'cris@usp.br', '12345678900', 'Rua Episcocal, 35, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12348678, 098823326, '1243567-x', 'ES', 'Cris Ferreira', 'Basico', 'cris@usp.br', '12345678900', 'Rua Episcocal, 34, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12349678, 098923326, '1254567-x', 'SC', 'Antonio Ferreira', 'Basico', 'tonho@usp.br', '12345678900', 'Rua Episcocal, 34, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (19345678, 098713326, '1265567-x', 'PR', 'Gabriela Ferreira', 'Basico', 'gaga@usp.br', '12345678900', 'Rua Episcocal, 34, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (18345678, 098733326, '1434567-x', 'RO', 'Juliana Barros', 'Basico', 'juju@usp.br', '12345678900', 'Rua Episcocal, 33, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (17345678, 098743326, '1874567-x', 'RR', 'Beatriz Garcia', 'Premium', 'bebe@usp.br', '12345678900', 'Rua Episcocal, 33, São Carlos, Brasil', 34, 'Ensino Médio Completo');
insert into Participante values (12345611, 098783326, '1624567-x', 'AC', 'Renato Garcia', 'Premium', 'rere@usp.br', '12345678900', 'Rua Episcocal, 33, São Carlos, Brasil', 34, 'Ensino Médio Completo');


insert into Participacao values (12345678, 'Mulheres no mundo dos games',081436);        
insert into Participacao values (12345671, 'Mulheres no mundo dos games',081436);        
insert into Participacao values (12345672, 'Mulheres no mundo dos games',081436);        
insert into Participacao values (12345673, 'Mulheres no mundo dos games',081436);        
insert into Participacao values (12345674, 'Mulheres no mundo dos games',081436);       
insert into Participacao values (12345675, 'Mulheres no mundo dos games',081436);       
insert into Participacao values (12345676, 'Mulheres no mundo dos games',081436);        
insert into Participacao values (12345677, 'Mulheres no mundo dos games',081436);        
insert into Participacao values (12345679, 'Lançamento PES2020',021486);  
insert into Participacao values (12345678, 'Lançamento PES2020',021486);       
insert into Participacao values (12345681, 'Lançamento PES2020',021486);       
insert into Participacao values (12345618, 'Lançamento PES2020',021486);        
insert into Participacao values (12345628, 'Lançamento PES2020',021486);     
insert into Participacao values (12345638, 'Lançamento PES2020',021486);      
insert into Participacao values (12345648, 'Lançamento PES2020',021486);
insert into Participacao values (12345658, 'Lançamento PES2020',021486);
insert into Participacao values (12345668, 'O movimento maker no Brasil',121436); 
insert into Participacao values (12345648, 'O movimento maker no Brasil',121436);    
insert into Participacao values (12345688, 'O movimento maker no Brasil',121436);        
insert into Participacao values (12345698, 'O movimento maker no Brasil',121436); 
insert into Participacao values (12345608, 'O movimento maker no Brasil',121436);        
insert into Participacao values (12345178, 'O movimento maker no Brasil',121436);    
insert into Participacao values (12345278, 'O movimento maker no Brasil',121436);    
insert into Participacao values (12345378, 'Como montar sua startup',031436);   
insert into Participacao values (12345478, 'Como montar sua startup',031436);      
insert into Participacao values (12345578, 'Como montar sua startup',031436);   
insert into Participacao values (12345078, 'Como montar sua startup',031436);    
insert into Participacao values (12345978, 'Como montar sua startup',031436);        
insert into Participacao values (12341678, 'Como montar sua startup',031436);      
insert into Participacao values (12342678, 'Como montar sua startup',031436);        
insert into Participacao values (12343678, 'Como montar sua startup',031436);    
insert into Participacao values (12344678, 'Games e apps de inclusão',021435);       
insert into Participacao values (12315678, 'Games e apps de inclusão',021435);    
insert into Participacao values (12325678, 'Games e apps de inclusão',021435);  
insert into Participacao values (12347678, 'Games e apps de inclusão',021435);     
insert into Participacao values (12348678, 'Games e apps de inclusão',021435);
insert into Participacao values (12349678, 'O movimento maker no Brasil',021736);  
insert into Participacao values (19345678, 'O movimento maker no Brasil',021736); 
insert into Participacao values (18345678, 'O movimento maker no Brasil',021736);       
insert into Participacao values (17345678, 'O movimento maker no Brasil',021736);       
insert into Participacao values (12345678, 'O movimento maker no Brasil',021736);  

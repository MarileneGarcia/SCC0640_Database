create table Atividade(
	Titulo varchar(80),
	Tipo varchar(8) not null,
	Descricao varchar(850),
	constraint pk_Atividade primary key (Titulo),
	constraint ck_Tipo check (upper(Tipo) in ('DEBATE','PALESTRA', 'ATRACAO'))
);


create table Instituicao(
	CNPJ int,
	Tipo varchar(12) not null,
	ESite varchar(50),
	constraint pk_Instituicao primary key (CNPJ),
	constraint ck_CNPJInstituicao check (floor(log(abs(CNPJ))+1) = 9),
	constraint ck_TipoInst check (upper(Tipo) in ('ONG', 'UNIVERSIDADE',  'EMPRESA'))
);


create table Associado(
	CodigoInscricao int,
	CPF int not null,
	DigitosRG varchar(9),
	UFRG varchar(2),
	Nome varchar(50) not null,
	Instituicao int,
	Curriculo varchar(850),
	constraint pk_Associado primary key (CodigoInscricao),
	constraint sk_Associado unique (CPF),
	constraint ck_CodigoAssociado check (floor(log(abs(CodigoInscricao))+1) = 8),
	--constraint ck_CPFAssociado check (floor(log(abs(CPF))+1) = 9),
	constraint fk_Associado foreign key (Instituicao) references Instituicao(CNPJ) on update cascade on delete set null
);


create table TipoAssociados(
	Associado int,
	Atividade varchar(80),
	Tipo varchar(11) not null,
	constraint pk_TipoAssociados primary key (Associado, Atividade),
	constraint ck_CPF_TipoAssociados check (floor(log(abs(Associado))+1) = 8),
	constraint ck_Tipo_TipoAssociados check (upper(Tipo) in ('PALESTRANTE', 'MODERADOR',  'EXPOSITOR')),
	constraint fk1_TipoAssociados foreign key (Associado) references Associado(CodigoInscricao) on delete cascade,
	constraint fk2_TipoAssociados foreign key (Atividade) references Atividade(Titulo) on delete cascade
);



create table Anfiteatro(
	Nome varchar(30) not null,
	Tipo varchar(50),
	Capacidade int,
	Descricao varchar(500),
	Acessibilidade varchar(400),
	Microfone boolean default false,
	Projetor boolean default false,
	ArCondicionado boolean default false,
	constraint pk_Anfiteatro primary key (Nome)
);


create table Debate(
	Atividade varchar(80),
	Local varchar(30) not null,
	DataHor date not null,
	Duracao int not null,
	constraint pk_Debate primary key (Atividade),
	constraint sk_Debate unique (Local, DataHor),
	constraint ck_DuracaoDebate check (floor(log(abs(Duracao))+1) between 0 and 120),
	constraint fk1_Debate foreign key (Atividade) references Atividade (Titulo) on delete cascade, 
	constraint fk2_Debate foreign key (Local) references Anfiteatro (Nome) on delete set null
);


create table AssuntoDebate(
	Atividade varchar(80),
	Assunto varchar(30),
	constraint pk_AssuntoDebate primary key (Atividade, Assunto),
	constraint fk_AssuntoDebate foreign key (Atividade) references Debate(Atividade) on delete cascade
);


create table Palestra(
	Atividade varchar(80),
	Local varchar(30) not null,
	DataHor date not null,
	Duracao int not null,
	constraint pk_Palestra primary key (Atividade),
	constraint sk_Palestra unique (Local, DataHor),
	constraint ck_DuracaoPalestra check (floor(log(abs(Duracao))+1) between 0 and 120),
	constraint fk1_Palestra foreign key (Atividade) references Atividade (Titulo) on delete cascade,
	constraint fk2_Palestra foreign key (Local) references Anfiteatro (Nome) on delete set null
);


create table AssuntoPalestra(
	Atividade varchar(80),
	Assunto varchar(30),
	constraint pk_AssuntoPalestra primary key (Atividade, Assunto),
	constraint fk_AssuntoPalestra foreign key (Atividade) references Palestra(Atividade) on delete cascade
);


create table Atracao(
	Atividade varchar(50),
	Tema varchar(30),
	Brinde boolean default false,
	constraint pk_Atracao primary key (Atividade),
	constraint fk_Atracao foreign key (Atividade) references Atividade (Titulo) on delete cascade
);


create table AreaExpo(
	Nome varchar(50),
	CapacidadeMax int, 
	Descricao varchar(500),
	Acessibilidade varchar(400),
	constraint pk_AreaExpo primary key (Nome)
);


create table Slot(
	AreaExpo varchar(50),
	NumIdentificador int not null,
	Tamanho int,
	constraint pk_Slot primary key (AreaExpo, NumIdentificador),
	constraint ck_NumIdentificador_Slot check (floor(log(abs(NumIdentificador))+1) between 0 and 100),
	constraint fk_Slot foreign key (AreaExpo) references AreaExpo (Nome) on delete cascade
);



create table InfoAtracao(
	Atracao varchar(50),
	DatHorInicio date,
	Duracao int not null,
	AreaExpo varchar(30) not null,
	NumSlot int not null,
	constraint pk_HorarioAtracao primary key (Atracao, DatHorInicio, AreaExpo, NumSlot),
	constraint ck_DuracaoAtracao check (floor(log(abs(Duracao))+1) between 0 and 300),
	constraint fk_NomeAtracao foreign key (Atracao) references Atracao(Atividade) on delete cascade,
	constraint fk_LocalAtracao foreign key (AreaExpo, NumSlot) references Slot(AreaExpo, NumIdentificador) on delete cascade
);


create table Exposicao(
	Atracao varchar(50),
	Expositor int,
	constraint pk_Exposicao primary key (Atracao, Expositor),
	constraint ck_Expositor check (floor(log(abs(Expositor))+1) = 8),
	constraint fk1_Exposicao foreign key (Atracao) references Atracao(Atividade) on delete cascade,
	constraint fk2_Exposicao foreign key (Expositor) references Associado(CodigoInscricao) on delete cascade
);


create table ONG(
	Instituicao int,
	Nome varchar(30) not null,
	AreaAtuacao varchar(100),
	constraint pk_ONG primary key (Instituicao),
	constraint ck_CNPJ_ONG check (floor(log(abs(Instituicao))+1) = 9),
	constraint fk_ONG foreign key (Instituicao) references Instituicao (CNPJ) on delete cascade
);


create table Universidade(
	Instituicao int,
	Nome varchar(30) not null,
	UF varchar(2),
	Tipo varchar(9),
	constraint pk_Universidade primary key (Instituicao),
	constraint ck_CNPJ_Universidade check (floor(log(abs(Instituicao))+1) = 9),
	constraint ck_TipoU check (upper(Tipo) in ('ESTADUAL', 'FEDERAL', 'MUNICIPAL', 'PRIVADA')),
	constraint fk_Universidade foreign key (Instituicao) references Instituicao (CNPJ) on delete cascade
);


create table Empresa(
	Instituicao int,
	Nome varchar(30) not null,
	Valor int,
	constraint pk_Empresa primary key (Instituicao),
	constraint ck_CNPJ_Empresa check (floor(log(abs(Instituicao))+1) = 9),
	constraint fk_Empresa foreign key (Instituicao) references Instituicao (CNPJ) on delete cascade
);


create table Parceria(
	Atividade varchar(50),
	Instituicao int,
	constraint pk_Parceria primary key (Atividade, Instituicao),
	constraint ck_CNPJ_Instituicao check (floor(log(abs(Instituicao))+1) = 9),
	constraint fk_Parceria1 foreign key (Atividade) references Atividade (Titulo) on delete cascade,
	constraint fk_Parceria2 foreign key (Instituicao) references Instituicao (CNPJ)  on delete cascade
);


create table ProjetoUniversidade(
	Nome varchar(50) not null,
	Universidade int,
	Atracao varchar(50),
	Descricao varchar(850),
	constraint pk_ProjetoUniversidade primary key (Nome, Universidade),
	constraint ck_CNPJ_ProjetoUniversidade check (floor(log(abs(Universidade))+1) = 9),
	constraint fk_ProjetoUniversidade1 foreign key (Universidade) references Universidade(Instituicao) on delete cascade,
	constraint fk_ProjetoUniversidade2 foreign key (Atracao) references Atracao(Atividade) on delete cascade
);


create table ProjetoONG(
	Nome varchar(50) not null,
	ONG int,
	Atracao varchar(50),
	Descricao varchar(850),
	constraint pk_ProjetoONG primary key (Nome, ONG),
	constraint ck_CNPJ_ProjetoONG check (floor(log(abs(ONG))+1) = 9),
	constraint fk_ProjetoONG1 foreign key (ONG) references ONG (Instituicao) on delete cascade,
	constraint fk_ProjetoONG2 foreign key (Atracao) references Atracao(Atividade) on delete cascade
);


create table Produto (
	Nome varchar(50) not null,
	Empresa int,
	Atracao varchar(50),
	Descricao varchar(850),
	DataLancamento date,
	constraint pk_Produto primary key (Nome, Empresa),
	constraint ck_CNPJ_ProdutoEmpresa check (floor(log(abs(Empresa))+1) = 9),
	constraint fk_Produto1 foreign key (Empresa) references Empresa (Instituicao)  on delete cascade,
	constraint fk_Produto2 foreign key (Atracao) references Atracao(Atividade) on delete cascade
);



create table Participante(
	CodigoInscricao int,
	CPF int not null,
	RGDigito varchar(9),
	RGUF varchar(2),
	Nome varchar(50) not null,
	NivelAcesso varchar(20),
	Email varchar(50),
	Telefone varchar(11),
	Endereco varchar(50),
	Idade int,
	Escolaridade varchar(50),
	constraint pk_Participante primary key (CodigoInscricao),
	constraint sk_CPF unique (CPF),
	constraint tk_CPF unique (RGDigito, RGUF),
	constraint ck_Codigo_Participante check (floor(log(abs(CodigoInscricao))+1) = 8),
	constraint ck_Nome_Participante check (floor(log(abs(CPF))+1) between 0 and 120)
);


create table Participacao (
	Participante int,
	Atividade varchar(50),
	Certificado int, --codigo Certificado
	constraint pk_Participacao primary key (Participante, Atividade),
	constraint ck_Codigo_Partipacao check (floor(log(abs(Participante))+1) = 8),
	constraint fk_Participacao1 foreign key (Participante) references Participante(CodigoInscricao) on update restrict on delete cascade,
	constraint fk_Participacao2 foreign key (Atividade) references Atividade(Titulo) on update cascade on delete cascade
);











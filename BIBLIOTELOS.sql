Create table Books(
id_livro SERIAL PRIMARY KEY,
titulo VARCHAR(50) NOT NULL,
autor VARCHAR(50) NOT NULL,
genero VARCHAR (25) NOT NULL,
ano_edicao INT NOT NULL,
editora VARCHAR(30) not null,
nacionalidade varchar(50),
qntd_exemplares INT not null
);


CREATE TABLE Users(
id_user SERIAL PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
dt_nasc DATE not null,
email VARCHAR(50) NOT NULL,
status_ativo BOOLEAN DEFAULT TRUE,
nacionalidade VARCHAR(30) Not NULL,
doc_numero VARCHAR(20) UNIQUE,
doc_tipo VARCHAR(10),
endereco varchar(200),
telefone varchar(20)
);


create table Loans(
id_loan SERIAL PRIMARY KEY,
dta_loan DATE,
dta_dvol DATE,
id_livro INT NOT NULL,
id_user INT NOT NULL,
FOREIGN KEY (id_livro) REFERENCES Books(id_livro),
FOREIGN KEY (id_user) REFERENCES Users(id_user)
);



-- 1. base de livros existente
INSERT INTO BOOKS (titulo, autor, genero, ano_edicao, editora, qntd_exemplares) VALUES
('Dom Quixote', 'Miguel de Cervantes', 'Romance', 2018, 'Penguin', 5),
('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 'Infantil', 2015, 'Agir', 8),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'Fantasia', 2019, 'HarperCollins', 6),
('O Alquimista', 'Paulo Coelho', 'Ficção', 2017, 'Paralela', 7),
('Dom Casmurro', 'Machado de Assis', 'Clássico BR', 2010, 'Principis', 10),
('O Código Da Vinci', 'Dan Brown', 'Suspense', 2004, 'Arqueiro', 4),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 'Fantasia', 2017, 'Rocco', 8),
('Cem Anos de Solidão', 'Gabriel García Márquez', 'Realismo Mágico', 2009, 'Record', 5),
('1984', 'George Orwell', 'Distopia', 2009, 'Companhia das Letras', 6),
('Admirável Mundo Novo', 'Aldous Huxley', 'Distopia', 2014, 'Biblioteca Azul', 4),
('O Grande Gatsby', 'F. Scott Fitzgerald', 'Romance', 2011, 'L&PM', 3),
('Crime e Castigo', 'Fiódor Dostoiévski', 'Clássico', 2013, 'Editora 34', 4),
('Orgulho e Preconceito', 'Jane Austen', 'Romance', 2016, 'Martin Claret', 5),
('Vidas Secas', 'Graciliano Ramos', 'Regionalista', 2015, 'Record', 7),
('Grande Sertão: Veredas', 'João Guimarães Rosa', 'Literatura BR', 2019, 'Companhia das Letras', 5),
('A Hora da Estrela', 'Clarice Lispector', 'Literatura BR', 2020, 'Rocco', 6),
('Capitães da Areia', 'Jorge Amado', 'Romance BR', 2011, 'Companhia das Letras', 8),
('Iracema', 'José de Alencar', 'Clássico BR', 2015, 'Ática', 5),
('Memórias Póstumas de Brás Cubas', 'Machado de Assis', 'Clássico BR', 2014, 'Principis', 9),
('O Conde de Monte Cristo', 'Alexandre Dumas', 'Aventura', 2012, 'Zahar', 3),
('A Metamorfose', 'Franz Kafka', 'Ficção', 2005, 'Companhia das Letras', 4),
('O Retrato de Dorian Gray', 'Oscar Wilde', 'Clássico', 2012, 'Penguin', 5),
('Frankenstein', 'Mary Shelley', 'Terror', 2017, 'DarkSide', 4),
('Drácula', 'Bram Stoker', 'Terror', 2018, 'DarkSide', 4),
('A Revolução dos Bichos', 'George Orwell', 'Sátira', 2007, 'Companhia das Letras', 7),
('O Hobbit', 'J.R.R. Tolkien', 'Fantasia', 2019, 'HarperCollins', 6),
('As Crônicas de Nárnia', 'C.S. Lewis', 'Fantasia', 2009, 'Martins Fontes', 5),
('O Cortiço', 'Aluísio Azevedo', 'Naturalismo BR', 2013, 'Ática', 6),
('Triste Fim de Policarpo Quaresma', 'Lima Barreto', 'Pré-Modernismo', 2011, 'Penguin', 4),
('O Diário de Anne Frank', 'Anne Frank', 'Biografia', 2015, 'Record', 5);


select* from books order by id_livro asc;

-- novos livros 
INSERT INTO books (titulo, autor, genero, ano_edicao, editora, qntd_exemplares) VALUES

('Olhos D''água', 'Conceição Evaristo', 'Contos BR', 2014, 'Pallas', 9),
('Budapeste', 'Chico Buarque', 'Romance BR', 2003, 'Companhia das Letras', 5),
('Jantar Secreto', 'Raphael Montes', 'Thriller/Suspense BR', 2016, 'Companhia das Letras', 7),
('O Peso do Pássaro Morto', 'Aline Bei', 'Poesia/Prosa BR', 2017, 'Nós', 6),
('A Cabeça do Santo', 'Socorro Acioli', 'Realismo Mágico', 2014, 'Companhia das Letras', 5),
('Barba Ensopada de Sangue', 'Daniel Galera', 'Drama BR', 2012, 'Companhia das Letras', 4),
('Crepúsculo', 'Stephenie Meyer', 'Romance Jovem', 2008, 'Intrínseca', 6),
('Jogos Vorazes', 'Suzanne Collins', 'Distopia', 2010, 'Rocco', 7),
('A Menina que Roubava Livros', 'Markus Zusak', 'Drama', 2007, 'Intrínseca', 5),
('O Caçador de Pipas', 'Khaled Hosseini', 'Drama', 2005, 'Nova Fronteira', 6),
('Cinquenta Tons de Cinza', 'E.L. James', 'Romance Erótico', 2012, 'Intrínseca', 4),
('A Culpa é das Estrelas', 'John Green', 'Romance Jovem', 2012, 'Intrínseca', 8),
('Garota Exemplar', 'Gillian Flynn', 'Suspense', 2013, 'Intrínseca', 4),
('A Sutil Arte de Ligar o F*da-se', 'Mark Manson', 'Autoajuda', 2017, 'Intrínseca', 9),
('Torto Arado', 'Itamar Vieira Junior', 'Contemporâneo BR', 2019, 'Todavia', 10),
('A Rainha Vermelha', 'Victoria Aveyard', 'Fantasia', 2015, 'Seguinte', 5),
('Divergente', 'Veronica Roth', 'Distopia', 2012, 'Rocco', 5),
('Diário de um Banana', 'Jeff Kinney', 'Infanto-Juvenil', 2008, 'V&R', 10),
('Sapiens: Uma Breve História da Humanidade', 'Yuval Noah Harari', 'Não-Ficção', 2015, 'L&PM', 5),
('Mulheres que Correm com os Lobos', 'Clarissa Pinkola Estés', 'Psicologia', 2018, 'Rocco', 4),
('1Q84', 'Haruki Murakami', 'Ficção', 2012, 'Alfaguara', 3),
('O Orfanato da Srta. Peregrine', 'Ransom Riggs', 'Fantasia', 2015, 'Intrínseca', 5),
('Extraordinário', 'R.J. Palacio', 'Drama', 2013, 'Intrínseca', 6),
('Tudo é Rio', 'Carla Madeira', 'Contemporâneo BR', 2021, 'Record', 8),
('O Avesso da Pele', 'Jeferson Tenório', 'Contemporâneo BR', 2020, 'Companhia das Letras', 6),
('Mindset', 'Carol S. Dweck', 'Psicologia', 2017, 'Objetiva', 5),
('Os Sete Maridos de Evelyn Hugo', 'Taylor Jenkins Reid', 'Drama', 2019, 'Paralela', 9),
('É Assim que Acaba', 'Colleen Hoover', 'Romance', 2018, 'Galera Record', 10),
('Verity', 'Colleen Hoover', 'Suspense', 2020, 'Galera Record', 7),
('Heartstopper: Dois garotos, um encontro', 'Alice Oseman', 'HQ/Romance', 2021, 'Seguinte', 6),
('Corte de Espinhos e Rosas', 'Sarah J. Maas', 'Fantasia', 2015, 'Galera Record', 8),
('A Biblioteca da Meia-Noite', 'Matt Haig', 'Ficção', 2021, 'Bertrand Brasil', 7),
('O Homem de Giz', 'C.J. Tudor', 'Suspense', 2018, 'Intrínseca', 4),
('Vermelho, Branco e Sangue Azul', 'Casey McQuiston', 'Romance', 2019, 'Seguinte', 6);

select*from books
--atuaização dos livros
update books set nacionalidade = 'Estrangeira';

update books set nacionalidade = 'Brasileira' 
where autor in('Machado de Assis', 
    'Graciliano Ramos', 'João Guimarães Rosa','Clarice Lispector', 'Jorge Amado', 
    'José de Alencar','Aluísio Azevedo', 'Lima Barreto', 'Paulo Coelho','Conceição Evaristo', 
    'Chico Buarque', 'Raphael Montes', 'Aline Bei', 'Socorro Acioli', 'Daniel Galera',
    'Itamar Vieira Junior', 'Carla Madeira', 'Jeferson Tenório'); 

update books set genero = REPLACE( genero, 'BR', '') WHERE genero LIKE '%BR%';
	

delete from books 
where autor in('J.K. Rowling', 'Mark Manson', 'Colleen Hoover', 'Carol S. Dweck','John Green', 'George Orwell') ;

select *from books order by id_livro ASC;

-- buscas de livros
SELECT * FROM books WHERE nacionalidade = 'Brasileira' ;
SELECT * FROM books where  editora = 'Intrínseca';
select * FROM BOOKS WHERE ano_edicao between 2003 and 2010;


-- base dos usuarios 

INSERT INTO users (nome, email, status_ativo, telefone, endereco, dt_nasc, doc_numero, nacionalidade) VALUES

('Afonso Pena', 'afonso.pena@email.com', TRUE, '31999880002', 'Centro, Santa Bárbara - MG', '1847-11-30', '12345678902', 'Brasileira'),
('Agatha Nunes', 'agatha.nunes@email.com', TRUE, '11999880003', 'Jardins, São Paulo - SP', '2000-05-15', '12345678903', 'Brasileira'),
('Alan Kardec', 'alan.kardec@email.com', FALSE, '21999880004', 'Barra da Tijuca, Rio de Janeiro - RJ', '1989-01-12', '12345678904', 'Brasileira'),
('Alberto Roberto', 'alberto.roberto@email.com', FALSE, '21999880005', 'Leblon, Rio de Janeiro - RJ', '1960-04-01', '12345678905', 'Brasileira'),
('Alessandra Ambrosio', 'alessandra.ambrosio@email.com', TRUE, '51999880006', 'Erechim, RS', '1981-04-11', '12345678906', 'Brasileira'),
('Alexandre Pires', 'alexandre.pires@email.com', TRUE, '34999880007', 'Uberlândia, MG', '1976-01-08', '12345678907', 'Brasileira'),
('Alice Braga', 'alice.braga@email.com', TRUE, '11999880008', 'Vila Madalena, São Paulo - SP', '1983-04-15', '12345678908', 'Brasileira'),
('Bárbara Paz', 'barbara.paz@email.com', TRUE, '51999880016', 'Campo Bom, RS', '1974-10-17', '12345678916', 'Brasileira'),
('Benedito Ruy', 'benedito.ruy@email.com', TRUE, '11999880017', 'São Paulo, SP', '1931-04-17', '12345678917', 'Brasileira'),
('Bianca Bin', 'bianca.bin@email.com', TRUE, '11999880018', 'Jundiaí, SP', '1990-09-03', '12345678918', 'Brasileira'),
('Aline Moraes', 'aline.moraes@email.com', TRUE, '15999880009', 'Sorocaba, SP', '1982-12-22', '12345678909', 'Brasileira');

select* from users
--inserir novos users

INSERT INTO users (nome, email, status_ativo, telefone, endereco, dt_nasc, doc_numero, doc_tipo,nacionalidade) VALUES

('Ana Carolina Oliveira', 'ana.carol@email.com', TRUE, '11987651001', 'Rua das Acácias, 45 - SP', '1995-03-15', '33399988877', 'CPF', 'Brasileira'),
('Roberto Carlos Braga', 'rc.braga@email.com', FALSE, '21999887766', 'Av. Atlântica, 1000 - RJ', '1941-04-19', '11122233344', 'CPF', 'Brasileira'),
('Michael Ross', 'mike.ross@email.com', FALSE, '+15550192834', '5th Avenue, NY - USA', '1985-08-20', 'USA987654', 'PASSAPORTE', 'Americana'),
('Paola Carosella', 'paola.c@email.com', TRUE, '11977776666', 'Rua Artur de Azevedo, 500 - SP', '1972-10-30', 'V888777-X', 'RNE', 'Argentina'),
('Lucas Silva e Silva', 'lucas.mundo@email.com', TRUE, '11955554444', 'Rua da Fantasia, 10 - SP', '2010-06-01', '55566677788', 'CPF', 'Brasileira'),
('José Saramago Neto', 'jose.sara@email.com', FALSE, '+351912345678', 'Rua da Saudade, Lisboa - PT', '1950-11-16', 'PRT123456', 'PASSAPORTE', 'Portuguesa'),
('Tarsila do Amaral', 'tarsila.arts@email.com', TRUE, '11911112222', 'Fazenda São Bernardo, Capivari - Interior de São Paulo', '1986-09-01', '22233344455', 'CPF', 'Brasileira'),
('Haruki Murakami', 'haruki.run@email.com', TRUE, '+819012345678', 'Kyoto District, JP', '1949-01-12', 'JPN555444', 'PASSAPORTE', 'Japonesa'),
('Ivete Maria Dias', 'veveta@email.com', TRUE, '71988880000', 'Ladeira da Barra, Salvador - BA', '1972-05-27', '99988877700', 'CPF', 'Brasileira'),
('Marie Curie Silva', 'marie.science@email.com', TRUE, '41999991111', 'Rua das Araucárias, Curitiba - PR', '1980-11-07', '88855522211', 'CPF', 'Polonesa-Brasileira'),
('Amanda Lima', 'amanda.l@email.com', TRUE, '11900010001', 'Rua A, 1 - SP', '1990-01-10', '60000000001', 'CPF', 'Brasileira'),
('Bruno Souza', 'bruno.s@email.com', TRUE, '11900010002', 'Rua B, 2 - SP', '1991-02-11', '60000000002', 'CPF', 'Brasileira'),
('Carlos Pereira', 'carlos.p@email.com', FALSE, '11900010003', 'Rua C, 3 - SP', '1992-03-12', '60000000003', 'CPF', 'Brasileira'),
('Daniela Alves', 'dani.a@email.com', TRUE, '11900010004', 'Rua D, 4 - SP', '1993-04-13', '60000000004', 'CPF', 'Brasileira'),
('Eduardo Costa', 'edu.c@email.com', TRUE, '11900010005', 'Rua E, 5 - SP', '1985-05-14', '60000000005', 'CPF', 'Brasileira'),
('Fernanda Rocha', 'fe.rocha@email.com', FALSE, '11900010006', 'Rua F, 6 - SP', '1988-06-15', '60000000006', 'CPF', 'Brasileira'),
('Gabriel Martins', 'gabriel.m@email.com', FALSE, '11900010007', 'Rua G, 7 - SP', '1999-07-16', '60000000007', 'CPF', 'Brasileira'),
('Dua Lipa', 'dua.l@email.com', TRUE, '445550016', 'London, UK', '1995-08-22', 'INTL-056', 'PASSAPORTE', 'Inglesa'),
('Elton John', 'elton.j@email.com', FALSE, '445550017', 'Pinner, UK', '1947-03-25', 'INTL-057', 'PASSAPORTE', 'Inglesa'),
('Freddie Mercury', 'freddie.m@email.com', FALSE, '445550018', 'Stone Town, TZ', '1946-09-05', 'INTL-058', 'PASSAPORTE', 'Inglesa'),
('Greta Thunberg', 'greta.t@email.com', TRUE, '465550019', 'Stockholm, SE', '2003-01-03', 'INTL-059', 'PASSAPORTE', 'Sueca'),
('Uma Thurman', 'uma.t@email.com', TRUE, '15550007', 'Boston, USA', '1970-04-29', 'INTL-047', 'PASSAPORTE', 'Americana'),
('Rihanna Fenty', 'rihanna@email.com', TRUE, '15550004', 'Barbados', '1988-02-20', 'INTL-044', 'PASSAPORTE', 'Barbadiana'),
('Gal Costa', 'gal.c@email.com', FALSE, '71900010033', 'Salvador, BA', '1945-09-26', '60000000033', 'CPF', 'Brasileira'),
('Hebe Camargo', 'hebe.c@email.com', FALSE, '11900010034', 'São Paulo, SP', '1929-03-08', '60000000034', 'CPF', 'Brasileira'),
('Iza Singer', 'iza@email.com', TRUE, '21900010035', 'Rio de Janeiro, RJ', '1990-09-03', '60000000035', 'CPF', 'Brasileira'),
('Jô Soares', 'jo.s@email.com', FALSE, '11900010036', 'São Paulo, SP', '1938-01-16', '60000000036', 'CPF', 'Brasileira'),
('Marisa Monte', 'marisa.m@email.com', TRUE, '21900010039', 'Rio de Janeiro, RJ', '1967-07-01', '60000000039', 'CPF', 'Brasileira'),
('Ney Matogrosso', 'ney.m@email.com', TRUE, '67900010040', 'Bela Vista, MS', '1941-08-01', '60000000040', 'CPF', 'Brasileira'),
('Djavan Santos', 'djavan@email.com', TRUE, '82900010030', 'Maceió, AL', '1949-01-27', '60000000030', 'CPF', 'Brasileira'),
('Caetano Veloso', 'caetano.v@email.com', TRUE, '71900010029', 'Salvador, BA', '1942-08-07', '60000000029', 'CPF', 'Brasileira'),
('Adele Adkins', 'adele@email.com', TRUE, '445550013', 'London, UK', '1988-05-05', 'INTL-053', 'PASSAPORTE', 'Inglesa'),
('Orlando Bloom', 'orlando.b@email.com', TRUE, '15550001', 'California, USA', '1977-01-13', 'INTL-041', 'PASSAPORTE', 'Inglesa'),
('Penelope Cruz', 'penelope.c@email.com', TRUE, '345550002', 'Madrid, ES', '1974-04-28', 'INTL-042', 'PASSAPORTE', 'Espanhola'),
('Katiuscia Abreu', 'kat.a@email.com', TRUE, '63900010037', 'Palmas, TO', '1970-02-02', '60000000037', 'CPF', 'Brasileira'),
('Luan Santana', 'luan.s@email.com', TRUE, '67900010038', 'Campo Grande, MS', '1991-03-13', '60000000038', 'CPF', 'Brasileira'),
('Bruno Henrique Santos', 'bruno.santos@email.com', TRUE, '11988880002', 'Rua B, 2', '1990-02-02', 'CPF00000002', 'CPF', 'Brasileira'),
('Carla Oliveira', 'carla.oliveira@email.com', FALSE, '11988880003', 'Rua C, 3', '1991-03-03', 'CPF00000003', 'CPF', 'Brasileira'),
('Daniela Souza', 'daniela.souza@email.com', TRUE, '11988880004', 'Rua D, 4', '1992-04-04', 'CPF00000004', 'CPF', 'Brasileira'),
('Eduardo Lima', 'eduardo.lima@email.com', TRUE, '11988880005', 'Rua E, 5', '1985-05-05', 'CPF00000005', 'CPF', 'Brasileira'),
('Fernanda Costa', 'fernanda.costa@email.com', TRUE, '11988880006', 'Rua F, 6', '1988-06-06', 'CPF00000006', 'CPF', 'Brasileira'),
('Gabriel Pereira', 'gabriel.pereira@email.com', TRUE, '11988880007', 'Rua G, 7', '1999-07-07', 'CPF00000007', 'CPF', 'Brasileira'),
('Kaique Nascimento', 'kaique.nascimento@email.com', TRUE, '11988880011', 'Rua K, 11', '1996-11-11', 'CPF00000011', 'CPF', 'Brasileira'),
('Larissa Alves', 'larissa.alves@email.com', TRUE, '11988880012', 'Rua L, 12', '1997-12-12', 'CPF00000012', 'CPF', 'Brasileira'),
('Matheus Carvalho', 'matheus.carvalho@email.com', TRUE, '11988880013', 'Rua M, 13', '1998-01-13', 'CPF00000013', 'CPF', 'Brasileira'),
('Natália Araújo', 'natalia.araujo@email.com', FALSE, '11988880014', 'Rua N, 14', '1999-02-14', 'CPF00000014', 'CPF', 'Brasileira'),
('Otávio Ribeiro', 'otavio.ribeiro@email.com', FALSE, '11988880015', 'Rua O, 15', '1985-03-15', 'CPF00000015', 'CPF', 'Brasileira'),
('Ximena Duarte', 'ximena.duarte@email.com', FALSE, '11988880024', 'Rua X, 24', '1994-12-24', 'CPF00000024', 'CPF', 'Brasileira'),
('Yuri Mendes', 'yuri.mendes@email.com', FALSE, '11988880025', 'Rua Y, 25', '1995-01-25', 'CPF00000025', 'CPF', 'Brasileira'),
('Zélia Cardoso', 'zelia.cardoso@email.com', TRUE, '11988880026', 'Rua Z, 26', '1996-02-26', 'CPF00000026', 'CPF', 'Brasileira'),
('André Monteiro', 'andre.monteiro@email.com', TRUE, '11988880027', 'Rua AA, 27', '1997-03-27', 'CPF00000027', 'CPF', 'Brasileira'),
('Beatriz Nogueira', 'beatriz.nogueira@email.com', FALSE, '11988880028', 'Rua BB, 28', '1998-04-28', 'CPF00000028', 'CPF', 'Brasileira'),
('Caio Teixeira', 'caio.teixeira@email.com', TRUE, '11988880029', 'Rua CC, 29', '1999-05-29', 'CPF00000029', 'CPF', 'Brasileira'),
('Débora Vieira', 'debora.vieira@email.com', FALSE, '11988880030', 'Rua DD, 30', '2000-06-30', 'CPF00000030', 'CPF', 'Brasileira'),
('Elias Santana', 'elias.santana@email.com', TRUE, '11988880031', 'Rua EE, 31', '1985-07-31', 'CPF00000031', 'CPF', 'Brasileira'),
('Fábio Junior', 'fabio.junior@email.com', TRUE, '11988880032', 'Rua FF, 32', '1986-08-01', 'CPF00000032', 'CPF', 'Brasileira'),
('Gisele Farias', 'gisele.farias@email.com', TRUE, '11988880033', 'Rua GG, 33', '1987-09-02', 'CPF00000033', 'CPF', 'Brasileira'),
('Hugo Moretti', 'hugo.moretti@email.com', FALSE, '11988880034', 'Rua HH, 34', '1988-10-03', 'CPF00000034', 'CPF', 'Brasileira'),
('Isabela Moura', 'isabela.moura@email.com', FALSE, '11988880035', 'Rua II, 35', '1989-11-04', 'CPF00000035', 'CPF', 'Brasileira'),
('Wesley Siqueira', 'wesley.siqueira@email.com', FALSE, '11988880049', 'Rua WW, 49', '1991-01-18', 'CPF00000049', 'CPF', 'Brasileira'),
('Bob Marley', 'bob.marley@email.com', FALSE, '18765550013', 'Nine Mile - JM', '1945-02-06', 'JAM-0013', 'PASSAPORTE', 'Jamaicana'),
('Michael Jackson', 'mj.king@email.com', FALSE, '18055550014', 'Neverland, CA - USA', '1958-08-29', 'USA-0014', 'PASSAPORTE', 'Americana'),
('Lionel Messi', 'leo.messi@email.com', TRUE, '54115550024', 'Rosario - AR', '1987-06-24', 'ARG-1010', 'PASSAPORTE', 'Argentina'),
('Shakira Mebarak', 'shakira@email.com', TRUE, '57555550025', 'Barranquilla - CO', '1977-02-02', 'COL-WAKA', 'PASSAPORTE', 'Colombiana'),
('Jackie Chan', 'jackie.chan@email.com', TRUE, '85255550026', 'Hong Kong - HK', '1954-04-07', 'HKG-KUNGFU', 'PASSAPORTE', 'Chinesa'),
('Will Smith', 'will.smith@email.com', TRUE, '12155550027', 'Philadelphia, PA - USA', '1968-09-25', 'USA-PRINCE', 'PASSAPORTE', 'Americana'),
('Emma Watson', 'emma.w@email.com', TRUE, '44205550028', 'Paris - FR', '1990-04-15', 'UK-HERM', 'PASSAPORTE', 'Inglesa'),
('Tom Cruise', 'tom.cruise@email.com', FALSE, '13105550030', 'Syracuse, NY - USA', '1962-07-03', 'USA-TOPGUN', 'PASSAPORTE', 'Americana'),
('Gisele Bündchen', 'gisele.b@email.com', FALSE, '12125550031', 'Horizontina, RS - BR', '1980-07-20', 'BRA-MODEL', 'PASSAPORTE', 'Brasileira'),
('Roger Federer', 'roger.f@email.com', TRUE, '41615550032', 'Basel - CH', '1981-08-08', 'SUI-TENNIS', 'PASSAPORTE', 'Suíça'),
('Usain Bolt', 'usain.bolt@email.com', TRUE, '18765550033', 'Sherwood Content - JM', '1986-08-21', 'JAM-RUN', 'PASSAPORTE', 'Jamaicana'),
('Lewis Hamilton', 'lewis.h@email.com', TRUE, '44205550034', 'Stevenage - UK', '1985-01-07', 'UK-F1RACER', 'PASSAPORTE', 'Inglesa'),
('Serena Williams', 'serena.w@email.com', FALSE, '13105550035', 'Saginaw, MI - USA', '1981-09-26', 'USA-TENNIS', 'PASSAPORTE', 'Americana'),
('Ayrton Senna', 'ayrton.senna@email.com', FALSE, '11999881007', 'São Paulo, SP', '1960-03-21', '00000014007', 'CPF', 'Brasileira'),
('Elis Regina', 'elis.regina@email.com', FALSE, '51999881008', 'Porto Alegre, RS', '1945-03-17', '00000014008', 'CPF', 'Brasileira'),
('Tim Maia', 'tim.maia@email.com', FALSE, '21999881009', 'Rio de Janeiro, RJ', '1942-09-28', '00000014009', 'CPF', 'Brasileira'),
('Cazuza Araújo', 'cazuza@email.com', FALSE, '21999881010', 'Rio de Janeiro, RJ', '1958-04-04', '00000014010', 'CPF', 'Brasileira'),
('Chico Buarque', 'chico.buarque@email.com', TRUE, '21999880028', 'Rio de Janeiro, RJ', '1944-06-19', '12345678928', 'CPF', 'Brasileira'),
('Hermano Vianna', 'hermano.v@email.com', TRUE, '83999881021', 'João Pessoa, PB', '1960-01-01', '80010020030', 'CPF', 'Brasileira'),
('Capitu Santiago', 'capitu.dom@email.com', TRUE, '21999881022', 'Rio de Janeiro, RJ', '1880-05-15', '80010020031', 'CPF', 'Brasileira'),
('Bentinho Santiago', 'bentinho@email.com', TRUE, '21999881023', 'Rio de Janeiro, RJ', '1875-02-10', '80010020032', 'CPF', 'Brasileira'),
('Mônica Sousa', 'monica.limoeiro@email.com', TRUE, '11999881024', 'Bairro do Limoeiro, SP', '1963-03-03', '80010020033', 'CPF', 'Brasileira'),
('Cebolinha Sousa', 'cebolinha@email.com', TRUE, '11999881025', 'Bairro do Limoeiro, SP', '1960-10-24', '80010020034', 'CPF', 'Brasileira'),
('Cascão Sujo', 'cascao@email.com', TRUE, '11999881026', 'Bairro do Limoeiro, SP', '1961-11-25', '80010020035', 'CPF', 'Brasileira'),
('Magali Comilona', 'magali@email.com', TRUE, '11999881027', 'Bairro do Limoeiro, SP', '1964-05-10', '80010020036', 'CPF', 'Brasileira'),
('Chicó Suassuna', 'chico.auto@email.com', TRUE, '83999881028', 'Taperoá, PB', '1930-01-01', '80010020037', 'CPF', 'Brasileira'),
('João Grilo', 'joao.grilo@email.com', TRUE, '83999881029', 'Taperoá, PB', '1930-01-02', '80010020038', 'CPF', 'Brasileira'),
('Nazaré Tedesco', 'nazare.t@email.com', TRUE, '21999881030', 'Rio de Janeiro, RJ', '1950-06-06', '80010020039', 'CPF', 'Brasileira'),
('Carminha Tufão', 'carminha@email.com', TRUE, '21999881031', 'Rio de Janeiro, RJ', '1975-10-10', '80010020040', 'CPF', 'Brasileira'),
('Tieta do Agreste', 'tieta@email.com', TRUE, '71999881032', 'Santana do Agreste, BA', '1955-08-08', '80010020041', 'CPF', 'Brasileira'),
('Gabriela Cravo', 'gabriela.canela@email.com', TRUE, '73999881033', 'Ilhéus, BA', '1960-02-02', '80010020042', 'CPF', 'Brasileira'),
('Dona Flor', 'dona.flor@email.com', TRUE, '71999881034', 'Salvador, BA', '1965-05-05', '80010020043', 'CPF', 'Brasileira'),
('Vadinho Malandro', 'vadinho@email.com', TRUE, '71999881035', 'Salvador, BA', '1960-12-12', '80010020044', 'CPF', 'Brasileira'),
('Lineu Silva', 'lineu.grande@email.com', TRUE, '21999881036', 'Rio de Janeiro, RJ', '1955-04-01', '80010020045', 'CPF', 'Brasileira'),
('Nenê Silva', 'nene.grande@email.com', TRUE, '21999881037', 'Rio de Janeiro, RJ', '1958-05-10', '80010020046', 'CPF', 'Brasileira'),
('Agostinho Carrara', 'agostinho.taxista@email.com', TRUE, '21999881038', 'Rio de Janeiro, RJ', '1975-09-09', '80010020047', 'CPF', 'Brasileira'),
('Bebel Carrara', 'bebel@email.com', TRUE, '21999881039', 'Rio de Janeiro, RJ', '1980-11-11', '80010020048', 'CPF', 'Brasileira'),
('Odorico Paraguaçu', 'odorico@email.com', TRUE, '71999881040', 'Sucupira, BA', '1940-10-10', '80010020049', 'CPF', 'Brasileira');

select * from users
--atualização users
update users set doc_tipo = 'CPF' where nacionalidade = 'Brasileira';

-- excluir usuarios inativos
delete from users where status_ativo = FALSE;
delete from users where EXTRACT(YEAR FROM dt_nasc) between 1800 and 1900;
--buscar usuarios
 select *from users where nome LIKE '%Silva%';
 select* from users where doc_tipo = 'RNE' order by nome ASC;

-- verificaçao
select *from books order by id_livro asc;
select *from users order by id_user asc;


--EMPRESTIMOS

--REGISTRO DE EMPRESTIMOS

INSERT INTO loans (id_user, id_livro, dta_loan, dta_dvol) VALUES

(7, 1, '2023-01-17', NULL),
(7, 2, '2023-02-10', NULL),
(7, 10, '2023-06-15', '2023-06-30'),
(7, 53, '2024-06-01', NULL),
(7, 54, '2024-06-01', NULL),
(108, 30, '2023-08-01', '2023-08-10'),
(108, 31, '2023-09-05', '2023-09-12'),
(108, 32, '2023-11-20', NULL),
(108, 50, '2023-05-15', NULL),
(10, 5, '2023-03-10', '2023-04-10'),
(10, 15, '2024-01-15', NULL),
(10, 60, '2024-06-10', NULL),
(99, 3, '2023-12-01', '2023-12-20'),
(99, 4, '2024-02-10', '2024-02-25'),
(99, 6, '2024-06-12', NULL),
(55, 40, '2023-07-07', '2023-07-21'),
(55, 41, '2023-10-10', '2023-10-25'),
(56, 41, '2024-06-11', NULL),       
(5, 12, '2023-05-20', '2023-06-05'),
(15, 20, '2023-09-15', NULL),
(25, 60, '2024-04-01', '2024-04-15'),
(25, 64, '2024-06-01', NULL),
(50, 47, '2024-06-13', NULL),
(74, 14, '2024-03-15', '2024-03-30'), 
(74, 16, '2024-06-10', NULL),        
(81, 22, '2023-12-25', '2024-01-10'), 
(95, 33, '2023-06-01', '2023-06-15'),
(101, 45, '2024-06-05', NULL),
(101, 52, '2023-04-15', '2023-05-01'),
(11, 55, '2023-09-01', '2023-09-15'),
(22, 60, '2024-02-28', '2024-03-15'),
(33, 63, '2024-06-02', NULL),
(44, 63, '2023-10-31', NULL),
(9, 10, '2023-01-05', '2023-01-20'),
(9, 26, '2023-02-15', '2023-03-01'),
(7, 40, '2023-04-10', '2023-04-25'),
(2, 45, '2023-06-01', NULL),
(34, 3, '2023-02-05', NULL),          
(34, 40, '2023-08-10', '2023-08-25'), 
(15, 8, '2023-03-01', '2023-03-15'), 
(15, 29, '2023-06-20', NULL),         
(15, 48, '2023-09-12', NULL),         
(83, 12, '2023-02-10', NULL),         
(83, 33, '2023-05-05', '2023-05-20'), 
(83, 41, '2023-10-01', '2023-10-15'), 
(61, 8, '2023-01-20', NULL),         
(61, 36, '2023-07-22', '2023-08-05'), 
(74, 15, '2023-03-10', NULL),         
(74, 28, '2023-07-05', NULL),         
(18, 49, '2023-11-15', '2023-11-30'), 
(89, 2, '2023-02-25', '2023-03-10'),
(89, 24, '2023-06-10', NULL),
(8, 38, '2023-09-05', NULL),
(9, 19, '2023-04-05', '2023-04-20'),
(9, 31, '2023-08-15', '2023-08-30'),
(101, 6, '2023-05-12', '2023-05-27'),
(101, 27, '2023-09-20', '2023-10-05'),
(11, 35, '2024-01-10', NULL),
(11, 14, '2023-02-01', '2023-02-15'),
(11, 41, '2023-06-18', '2023-07-02'),
(12, 10, '2023-03-15', '2023-03-30'),
(12, 34, '2023-08-01', NULL),
(12, 17, '2023-04-20', '2023-05-05'), 
(12, 46, '2023-09-10', NULL),         
(15, 4, '2023-05-25', '2023-06-08'),  
(15, 23, '2023-10-15', NULL),         
(10, 11, '2023-06-30', '2023-07-15'),
(18, 26, '2023-09-25', '2023-10-10'),
(18, 47, '2024-02-20', NULL),
(19, 32, '2023-10-30', '2023-11-14'),
(19, 1, '2024-03-10', NULL),
(20, 16, '2023-11-22', '2023-12-07'),
(20, 49, '2024-04-05', NULL),
(21, 15, '2023-02-14', '2023-02-28'),
(22, 10, '2023-03-18', '2023-04-01'),
(23, 15, '2023-04-22', '2023-05-06'),
(22, 26, '2023-06-29', NULL),
(78, 45, '2023-10-12', NULL),         
(32, 14, '2024-01-22', NULL),
(33, 18, '2024-02-25', NULL),
(34, 24, '2024-03-29', NULL),
(37, 40, '2023-03-21', NULL),
(39, 45, '2023-04-24', '2023-05-08'),
(39, 48, '2023-05-28', '2023-06-11'),
(40, 1, '2023-06-30', NULL);

select*from loans

-- QuANTOS EXEMPLARES DE CADA  titulo  estao emprestados?
SELECT 
    b.titulo, 
COUNT(l.id_loan) AS total_emprestado
FROM books AS b
JOIN loans AS l ON b.id_livro = l.id_livro
WHERE l.dta_dvol IS NULL  
GROUP BY b.id_livro, b.titulo
ORDER BY total_emprestado DESC;

-- Verificar emprestimos por usuário e titulo e livro

SELECT
u.nome,
u.email,
u.nacionalidade,
b.titulo,
b.autor,
b.genero,
b.nacionalidade,
l.dta_loan, l.dta_dvol
FROM loans AS l
INNER JOIN users AS u ON l.id_user = u.id_user
INNER JOIN books AS b ON l.id_livro = b.id_livro where l.dta_dvol is null;

-- livros devolvidos 
SELECT
u.nome,
u.email,
u.nacionalidade,
b.titulo,
b.autor,
b.genero,
l.dta_loan, l.dta_dvol
FROM loans AS l
INNER JOIN users AS u ON l.id_user = u.id_user
INNER JOIN books AS b ON l.id_livro = b.id_livro where l.dta_dvol is not null;

-- FUNCTION 

-- total de emprestimos por usuario
CREATE OR REPLACE FUNCTION total_emprestimos_usuario(user_alvo INT) 
RETURNS INT AS $$
DECLARE
    totl_user INT;
BEGIN
    
    SELECT COUNT(*) INTO totl_user 
    FROM loans 
    WHERE id_user = user_alvo AND dta_dvol IS NULL;


    RETURN totl_user;
END;
$$ LANGUAGE plpgsql;



-- USUARIOS QUE NUNCA FIZERAM EMPRÉSTIMO DE LIVRO
select u.nome from users u left join loans l on u.id_user = l.id_user
where l.id_user is NULL;


-- LIVROS EM EMPRESTIMO POR USUARIOS

SELECT 
    u.nome, 
COUNT(l.id_loan) AS totl_user 
FROM users AS u
JOIN loans AS l ON u.id_user = l.id_user   
JOIN books AS b ON l.id_livro = b.id_livro
WHERE l.dta_dvol IS NULL  
GROUP BY u.id_user, u.nome
ORDER BY totl_user  DESC;


-- RELATORIO COM VIEW

-- relatorio de movimento de livros  
CREATE OR REPLACE VIEW vw_relatorio_livros AS
SELECT 
    b.id_livro AS id_livro,
    b.titulo AS titulo,
    b.autor AS autor,
    
       COUNT(l.id_loan) FILTER (WHERE l.dta_dvol IS NULL) AS qtd_emprestada_agora,
    
       COUNT(l.id_loan) FILTER (WHERE l.dta_dvol IS NOT NULL) AS qtd_historico_devolucoes

FROM 
    books b
LEFT JOIN 
    loans l ON b.id_livro = l.id_livro
GROUP BY 
    b.id_livro, b.titulo, b.autor;

SELECT * FROM  vw_relatorio_livros


-- HANK DE LEITORES
CREATE OR REPLACE VIEW relatorio_top_usuarios AS
SELECT 
    u.nome,
    COUNT(l.id_loan) AS total_emprestimos
FROM users u
JOIN loans l ON u.id_user = l.id_user
GROUP BY u.nome
ORDER BY total_emprestimos DESC;

SELECT *FROM  relatorio_top_usuarios

--LIVROS QUE ESTÃO HÁ MUITO TEMPO SEM VOLTAR PRO ESTOQUE
CREATE OR REPLACE VIEW relatorio_emprestimos_ativos AS
SELECT 
    u.nome AS usuario,
    b.titulo AS livro,
    l.dta_loan AS data_retirada,
    CURRENT_DATE - l.dta_loan AS dias_com_livro 
FROM loans l
JOIN users u ON l.id_user = u.id_user
JOIN books b ON l.id_livro = b.id_livro
WHERE l.dta_dvol IS NULL;

SELECT*FROM relatorio_emprestimos_ativos

-- HANK DE GENEROS MAIS LIDOS

CREATE OR REPLACE VIEW genero_mais_lido as
SELECT 
	b.genero,
COUNT(l.id_loan) AS total_leituras
from loans l
JOIN books b ON l.id_livro = b.id_livro
GROUP BY b.genero
ORDER BY total_leituras DESC;

select * from genero_mais_lido 



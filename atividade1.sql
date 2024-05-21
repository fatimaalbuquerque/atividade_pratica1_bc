insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values
('As Crônicas de Nárnia', 'CS Lewis', 1950, true, 'Fantasia', '978-0064471190', 'HarperCollins', '768', 'Inglês');

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values ('Cem Anos de Solidão', 'Gabriel Garcia Marquez', 1967, true, 'Ficção', '978-0241968581', 'Penguin Books', '422', 'Espanhol'),
('Harry Potter e a Pedra Filosofal', 'J.K. Rowling', 1997, true, 'Fantasia', '978-0439708180', 'Bloomsbury', '309', 'Inglês'),
('O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, true, 'Fantasia', '978-0618640157', 'HarperCollins', '423', 'Inglês');

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma)
values
('BTK: A máscara da maldade', 'Roy Wenzl', 2019, true, 'História', '978-0610040157', 'Darkside', '416', 'Português');

update Livros
set disponivel = false
where ano_publicacao < 2000;

update Livros
set editora = 'Plume Books'
where titulo = '1984';

update Livros
set idioma = 'Inglês'
where editora = 'Penguin Books';

update Livros
set titulo = 'Harry Potter e a Pedra Filosofal (Edição Especial)'
where isbn = '978-0439708180';

delete from Livros
where categoria = 'Terror';

delete from Livros
where idioma = 'Francês' and ano_publicacao < 1970;

delete from Livros
where titulo = 'As Crônicas de Nárnia';

delete from Livros
where editora = 'Penguin Books';

select * from Livros
where quantidade_paginas > 500;

select categoria, count(categoria) from Livros
group by categoria;

select * from livros
limit 5;

select categoria, sum(quantidade_paginas), sum(quantidade_paginas)/count(quantidade_paginas) from Livros
where categoria = 'Drama';

select avg(ano_publicacao) from Livros
where disponivel = true;

-- duas consultas: uma para o mais antigo e outra para a mais novaprimeiro encontra-se o mais antigo e une as duas
select * from Livros
where ano_publicacao in(
select min(ano_publicacao) from Livros
union
select max(ano_publicacao) from Livros);

select * from Livros
order by ano_publicacao desc;

select titulo from Livros
where idioma = 'Inglês'

union

select titulo from Livros
where idioma = 'Português';

select * from Livros
where autor = 'George Orwell';
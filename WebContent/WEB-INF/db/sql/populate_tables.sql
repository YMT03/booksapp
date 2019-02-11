-- Generos
INSERT INTO genre (id, name) VALUES (1, 'Ficcion');
INSERT INTO genre (id, name) VALUES (2, 'Terror');
INSERT INTO genre (id, name) VALUES (3, 'Romantisismo');
INSERT INTO genre (id, name) VALUES (4, 'Infantil');
INSERT INTO genre (id, name) VALUES (5, 'Novela');
INSERT INTO genre (id, name) VALUES (6, 'Novela rosa');
INSERT INTO genre (id, name) VALUES (7, 'Drama');
INSERT INTO genre (id, name) VALUES (8, 'Literatura fantastica');
INSERT INTO genre (id, name) VALUES (9, 'Novela de formacion');
INSERT INTO genre (id, name) VALUES (10, 'Misterio');
INSERT INTO genre (id, name) VALUES (11, 'Thriller');
INSERT INTO genre (id, name) VALUES (12, 'Fantasia');

-- Editoriales
INSERT INTO publisher(id,name) VALUES (1, 'Eterna');
INSERT INTO publisher(id,name) VALUES (2, 'Planeta');
INSERT INTO publisher(id,name) VALUES (3, 'Boomsbury');
INSERT INTO publisher(id,name) VALUES (4, 'Sodomco');
INSERT INTO publisher(id,name) VALUES (5, 'Obelisco');
INSERT INTO publisher(id,name) VALUES (6, 'Penguin Random House');

-- Autores
INSERT INTO author(id,name,lastname) VALUES (1,'Joanne','Rowling');
INSERT INTO author(id,name,lastname) VALUES (2,'John Ronald','Tolkien');
INSERT INTO author(id,name,lastname) VALUES (3,'Gabriel','Garcia Marquez');
INSERT INTO author(id,name,lastname) VALUES (4,'Robert','Fisher');

-- Libros
INSERT INTO book(id, title, publisher_id, author_id, publicationdate, price, rating, synopsis, image, state) 
VALUES (1,'Harry Potter & La Piedra Filosofal', 3, 1, '12/11/1999',900, 4.9, 'La historia comienza con la celebraci�n del mundo m�gico. Durante muchos a�os, hab�a sido aterrorizado por el malvado mago Lord Voldemort. La noche del 31 de octubre, mat� a Lily y James Potter. Sin embargo, cuando intenta matar a su hijo de 1 a�o, Harry, la maldici�n asesina Avada Kedavra se vuelve sobre s� mismo. El cuerpo de Voldemort resulta destruido, pero �l sobrevive: no est� muerto ni vivo. Por su parte, a Harry solo le queda una cicatriz con forma de rayo en la frente que es el �nico remanente f�sico de la maldici�n de Voldemort. Harry es el �nico sobreviviente de la maldici�n asesina, y a ra�z de la misteriosa derrota de Voldemort, el mundo m�gico empieza a llamarlo como �el ni�o que sobrevivi�.', 'hp1.jpeg', 'Activo');

INSERT INTO book(id, title, publisher_id, author_id, publicationdate, price, rating, synopsis, image, state) 
VALUES (2,'Se�or de los Anillos', 4, 2, '1/12/1998',1000, 4.8, 'El representante del Mal, Sauron, forj� Un anillo �nico que controlar�a nueve anillos m�s que fueron otorgados a nueve gobernantes con el fin de conquistar la "Tierra Media", pero la alianza entre hombres y Elfos derrot� el ej�rcito de Sauron, que a su ves pierde el anillo a manos del Rey de Gondor, Isildur, este decide conservar el anillo para s�, pues no quiso arrojarlo al Monte del Destino, �nico lugar donde se forj� y se puede destruir el anillo. Pero el anillo tiene voluntad propia y puede corromper al su portador.', 'lordofrings.jpg', 'Activo');

INSERT INTO book(id, title, publisher_id, author_id, publicationdate, price, rating, synopsis, image, state) 
VALUES (3,'El caballero de la armadura oxidada', 5, 4, '01/05/1987',1000, 4.8, 'El protagonista, un caballero egoc�ntrico, que no consigue comprender y valorar con profundidad lo que tiene, es descuidado sin querer con las cosas y las personas que lo rodean. De esta forma se va encerrando poco a poco dentro de su armadura, hasta que �sta deja de brillar y se oxida; cuando se da cuenta, ya no puede quit�rsela. Prisionero de s� mismo, emprende un viaje por tres distintos castillos a trav�s del "sendero de la verdad", mientras se va dando cuenta de muchas cosas que nunca hab�a notado, reflexiona y as� va siendo poco a poco mejor persona y al final logra deshacerse de la armadura que le hab�a imposibilitado a mostrarse al mundo. Por su arrogancia se aleja de su familia. Y hace que todos se alejen de �l y al final re�ne a su familia...', 'knight.jpg', 'Activo');

INSERT INTO book(id, title, publisher_id, author_id, publicationdate, price, rating, synopsis, image, state) 
VALUES (4,'El amor en los tiempos del c�lera', 6, 3, '1985',1000, 4.8, 'La novela empieza con el doctor Juvenal Urbino inspeccionando el cad�ver de su amigo y compa�ero de ajedrez, el refugiado Jeremiah de Saint-Amour, que se hab�a suicidado para no tener que vivir la vejez, y dej�ndole todas sus posesiones a su amante. Se mencionan algunos sucesos de los m�s de cincuenta a�os de matrimonio de Juvenal Urbino y Fermina Daza, como sus m�ltiples mascotas (de las cuales sobreviven solamente la tortuga y el perico) y su pleito m�s profundo. La misma tarde del suicidio, el doctor Juvenal Urbino muere al caerse de una escalera. En su funeral, Florentino Ariza le confiesa a Fermina Daza no haber perdido el amor por ella. La novela se regresa al aor adolescente entre Florentino Ariza y Fermina Daza. �l la conoci� mientras le entregaba el correo a su padre, Lorenzo Daza, y su coraz�n se qued� clavado en ella desde el momento en que la vi�, y su amor fue tanto que cay� enfermo con s�ntomas de c�lera. Con la ayuda de su t�a, Eclesi�stica Daza, establecieron contacto a trav�s de cartas con las que su amor se agravi� al paso de dos a�os y a escondidas de Lorenzo Daza, al punto en que �l le pide matrimonio. Cuando Lorenzo descubre su relaci�n, saca a la c�mplice Escol�stica Daza de la casa y se lleva a Fermina a Valledepuar. Despu�s de la muerte del doctor Urbino, Florentino busca recuperarla', 'amor_tiempos_colera.jpg', 'Activo');

-- Relacion Libro-Genero
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 1);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 7);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 8);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 9);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 10);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 11);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 12);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 1);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 1);
INSERT INTO book_genre(book_id, genre_id) VALUES (2, 7);
INSERT INTO book_genre(book_id, genre_id) VALUES (2, 12);
INSERT INTO book_genre(book_id, genre_id) VALUES (4, 5);
INSERT INTO book_genre(book_id, genre_id) VALUES (4, 1);
INSERT INTO book_genre(book_id, genre_id) VALUES (4, 6);

-- Relacion Libro-Comentarios

INSERT INTO comment(id, book_id, username, content ) VALUES (1,1,'Pancho','Me parecio un libro muy hueco. Falto de significado. No lo recomiendo');
INSERT INTO comment(id, book_id, username, content ) VALUES (2,1,'Vanina','Alto libro guacho');
INSERT INTO comment(id, book_id, username, content ) VALUES (3,1,'Alberto','Recomendable');
INSERT INTO comment(id, book_id, username, content ) VALUES (4,2,'Mariana','No apto para menores. La trama es atrapante');

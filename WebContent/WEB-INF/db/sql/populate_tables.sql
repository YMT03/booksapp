-- Generos
INSERT INTO genre (id, name) VALUES (1, 'Ficcion');
INSERT INTO genre (id, name) VALUES (2, 'Terror');
INSERT INTO genre (id, name) VALUES (3, 'Romantisismo');
INSERT INTO genre (id, name) VALUES (4, 'Infantil');

-- Editoriales
INSERT INTO publisher(id,name) VALUES (1, 'Eterna');
INSERT INTO publisher(id,name) VALUES (2, 'Planeta');
INSERT INTO publisher(id,name) VALUES (3, 'Boomsbury');
INSERT INTO publisher(id,name) VALUES (4, 'Sodomco');

-- Autores
INSERT INTO author(id,name,lastname) VALUES (1,'Joanne','Rowling');
INSERT INTO author(id,name,lastname) VALUES (2,'John Ronald','Tolkien');
INSERT INTO author(id,name,lastname) VALUES (3,'Gabriel','Garcia Marquez');

-- Libros
INSERT INTO book(id, title, publisher_id, author_id, publicationdate, price, rating, synopsis, image, state) 
VALUES (1,'Harry Potter & La Piedra Filosofal', 3, 1, '12/11/1999',900, 4.9, 'La historia comienza con la celebración del mundo mágico. Durante muchos años, había sido aterrorizado por el malvado mago Lord Voldemort. La noche del 31 de octubre, mató a Lily y James Potter. Sin embargo, cuando intenta matar a su hijo de 1 año, Harry, la maldición asesina Avada Kedavra se vuelve sobre sí mismo. El cuerpo de Voldemort resulta destruido, pero él sobrevive: no está muerto ni vivo. Por su parte, a Harry solo le queda una cicatriz con forma de rayo en la frente que es el único remanente físico de la maldición de Voldemort. Harry es el único sobreviviente de la maldición asesina, y a raíz de la misteriosa derrota de Voldemort, el mundo mágico empieza a llamarlo como «el niño que sobrevivió».', 'hp1.jpeg', 'Activo');

INSERT INTO book(id, title, publisher_id, author_id, publicationdate, price, rating, synopsis, image, state) 
VALUES (2,'Señor de los Anillos', 4, 2, '1/12/1998',1000, 4.8, 'El representante del Mal, Sauron, forjó Un anillo único que controlaría nueve anillos más que fueron otorgados a nueve gobernantes con el fin de conquistar la "Tierra Media", pero la alianza entre hombres y Elfos derrotó el ejército de Sauron, que a su ves pierde el anillo a manos del Rey de Gondor, Isildur, este decide conservar el anillo para sí, pues no quiso arrojarlo al Monte del Destino, único lugar donde se forjó y se puede destruir el anillo. Pero el anillo tiene voluntad propia y puede corromper al su portador.', 'lordofrings.jpg', 'Activo');


-- Relacion Libro-Genero
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 1);
INSERT INTO book_genre(book_id, genre_id) VALUES (2, 1);
INSERT INTO book_genre(book_id, genre_id) VALUES (1, 3);

-- Relacion Libro-Comentarios

INSERT INTO comment(id, book_id, username, content ) VALUES (1,1,'Pancho','Me parecio un libro muy hueco. Falto de significado. No lo recomiendo');
INSERT INTO comment(id, book_id, username, content ) VALUES (2,1,'Vanina','Alto libro guacho');
INSERT INTO comment(id, book_id, username, content ) VALUES (3,1,'Alberto','Recomendable');
INSERT INTO comment(id, book_id, username, content ) VALUES (4,2,'Mariana','No apto para menores. La trama es atrapante');

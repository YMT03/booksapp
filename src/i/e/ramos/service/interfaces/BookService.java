package i.e.ramos.service.interfaces;

import java.util.List;

import i.e.ramos.bo.Author;
import i.e.ramos.bo.Book;
import i.e.ramos.bo.Genre;
import i.e.ramos.bo.Publisher;

public interface BookService {
	
	Long upsertBook(Book book);
	Book getBookById(Long id);
	List<Book> getAllBooks();
	boolean removeBookById(Long id);
	List<Genre> getAllGenres();
	List<Publisher> getAllPublishers();
	List<Author> getAllAuthors();

}

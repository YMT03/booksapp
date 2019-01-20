package i.e.ramos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import i.e.ramos.bo.Author;
import i.e.ramos.bo.Book;
import i.e.ramos.bo.Genre;
import i.e.ramos.bo.Publisher;
import i.e.ramos.dao.interfaces.AuthorDAO;
import i.e.ramos.dao.interfaces.BookDAO;
import i.e.ramos.dao.interfaces.GenreDAO;
import i.e.ramos.dao.interfaces.PublisherDAO;
import i.e.ramos.service.interfaces.BookService;

@Service
@Transactional(rollbackFor=Exception.class)
public class BookServiceImp implements BookService {

	@Autowired
	private BookDAO bookDAO;
	@Autowired
	private GenreDAO genreDAO;
	@Autowired
	private PublisherDAO publisherDAO;
	@Autowired
	private AuthorDAO authorDAO;
	@Override
	public Long saveBook(Book book) {
		return bookDAO.save(book);
	}
	
	@Override
	public Long updateBook(Book book) {
		return bookDAO.update(book);
	}

	@Override
	public Book getBookById(Long id) {
		return bookDAO.getById(id);
	}

	@Override
	public List<Book> getAllBooks() {
		return bookDAO.getAll();
	}

	@Override
	public List<Genre> getAllGenres() {
		return genreDAO.getAll();
	}

	@Override
	public List<Publisher> getAllPublishers() {
		return publisherDAO.getAll();
	}

	@Override
	public List<Author> getAllAuthors() {
		return authorDAO.getAll();
	}

	@Override
	public boolean removeBookById(Long id) {
		return bookDAO.removeById(id);
	}

}

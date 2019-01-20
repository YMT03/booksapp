package i.e.ramos.service.interfaces;

import java.util.List;

import i.e.ramos.bo.Author;

public interface AuthorService {
	
	Long saveAuthor(Author author);
	Author getAuthorById(Long id);
	List<Author> getAllAuthors();
	boolean removeAuthorById(Long id);
	Long updateAuthor(Author author);

}

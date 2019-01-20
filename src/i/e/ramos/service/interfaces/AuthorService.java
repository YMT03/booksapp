package i.e.ramos.service.interfaces;

import java.util.List;

import i.e.ramos.bo.Author;

public interface AuthorService {
	
	Long upsertAuthor(Author author);
	Author getAuthorById(Long id);
	List<Author> getAllAuthors();
	boolean removeAuthorById(Long id);
	
}

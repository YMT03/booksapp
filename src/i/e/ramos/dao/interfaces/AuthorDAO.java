package i.e.ramos.dao.interfaces;

import java.util.List;

import i.e.ramos.bo.Author;

public interface AuthorDAO {
	
	Long upsert(Author author);
	Author getById(Long id);
	List<Author> getAll();
	boolean removeById(Long id);
	
}

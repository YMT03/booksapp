package i.e.ramos.dao.interfaces;

import java.util.List;

import i.e.ramos.bo.Author;

public interface AuthorDAO {
	
	Long save(Author author);
	Author getById(Long id);
	List<Author> getAll();
	boolean removeById(Long id);
	Long update(Author author);

}

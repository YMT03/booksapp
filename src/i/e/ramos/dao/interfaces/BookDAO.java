package i.e.ramos.dao.interfaces;

import java.util.List;
import i.e.ramos.bo.Book;

public interface BookDAO {
	
	Long upsert(Book book);
	Book getById(Long id);
	List<Book> getAll();
	boolean removeById(Long id);

}

package i.e.ramos.dao.interfaces;

import java.util.List;
import i.e.ramos.bo.Publisher;

public interface PublisherDAO {
	
	Long upsert(Publisher publisher);
	Publisher getById(Long id);
	List<Publisher> getAll();
	boolean removeById(Long id);

}

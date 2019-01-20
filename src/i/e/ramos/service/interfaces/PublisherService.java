package i.e.ramos.service.interfaces;

import java.util.List;
import i.e.ramos.bo.Publisher;

public interface PublisherService {
	
	Long savePublisher(Publisher publisher);
	Publisher getPublisherById(Long id);
	List<Publisher> getAllPublishers();
	boolean removePublisherById(Long id);
	Long updatePublisher(Publisher publisher);

}

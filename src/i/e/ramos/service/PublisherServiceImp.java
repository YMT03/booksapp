package i.e.ramos.service;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import i.e.ramos.bo.Publisher;
import i.e.ramos.dao.interfaces.PublisherDAO;
import i.e.ramos.service.interfaces.PublisherService;

@Service
@Transactional(rollbackFor=Exception.class)
public class PublisherServiceImp implements PublisherService {

	@Autowired
	private PublisherDAO publisherDAO;
	@Override
	public Long savePublisher(Publisher author) {
		return publisherDAO.save(author);
	}
	
	@Override
	public Long updatePublisher(Publisher publisher) {
		return publisherDAO.update(publisher);
	}

	@Override
	public Publisher getPublisherById(Long id) {
		return publisherDAO.getById(id);
	}

	@Override
	public List<Publisher> getAllPublishers() {
		return publisherDAO.getAll();
	}

	@Override
	public boolean removePublisherById(Long id) {
		return publisherDAO.removeById(id);
	}

}

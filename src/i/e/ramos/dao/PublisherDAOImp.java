package i.e.ramos.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import i.e.ramos.bo.Publisher;
import i.e.ramos.dao.interfaces.PublisherDAO;

@Repository
public class PublisherDAOImp implements PublisherDAO {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public Long upsert(Publisher publisher) {
		sessionfactory.getCurrentSession().saveOrUpdate(publisher);
		return publisher.getId();
	}

	@Override
	public Publisher getById(Long id) {
		return (Publisher)sessionfactory.getCurrentSession().load(Publisher.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Publisher> getAll() {
		return sessionfactory.getCurrentSession().createQuery("from Publisher").list();
	}

	@Override
	public boolean removeById(Long id) {
		Publisher publisher = getById(id);
		sessionfactory.getCurrentSession().delete(publisher);
		return true;
	}
	
	

}

package i.e.ramos.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import i.e.ramos.bo.Banner;
import i.e.ramos.bo.Book;
import i.e.ramos.dao.interfaces.BannerDAO;
import i.e.ramos.dao.interfaces.BookDAO;

@Repository
public class BannerDAOImp implements BannerDAO {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public Long upsert(Banner banner) {
		sessionfactory.getCurrentSession().saveOrUpdate(banner);
		return banner.getId();
	}

	@Override
	public Banner getById(Long id) {
		return (Banner)sessionfactory.getCurrentSession().load(Banner.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Banner> getAll() {
		return sessionfactory.getCurrentSession().createQuery("from Banner").list();
	}

	@Override
	public boolean removeById(Long id) {
		Banner banner = getById(id);
		sessionfactory.getCurrentSession().delete(banner);
		return true;
	}
	
	

}

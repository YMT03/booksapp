package i.e.ramos.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import i.e.ramos.bo.Genre;
import i.e.ramos.dao.interfaces.GenreDAO;

@Repository
public class GenreDAOImp implements GenreDAO {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public Long upsert(Genre genre) {
		sessionfactory.getCurrentSession().saveOrUpdate(genre);
		return genre.getId();
	}

	@Override
	public Genre getById(Long id) {
		return (Genre)sessionfactory.getCurrentSession().load(Genre.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Genre> getAll() {
		return sessionfactory.getCurrentSession().createQuery("from Genre").list();
	}

	@Override
	public boolean removeById(Long id) {
		Genre genre = getById(id);
		sessionfactory.getCurrentSession().delete(genre);
		return true;
	}
	
	

}

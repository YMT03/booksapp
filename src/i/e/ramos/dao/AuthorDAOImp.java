package i.e.ramos.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import i.e.ramos.bo.Author;
import i.e.ramos.dao.interfaces.AuthorDAO;

@Repository
public class AuthorDAOImp implements AuthorDAO {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public Long upsert(Author author) {
		sessionfactory.getCurrentSession().saveOrUpdate(author);
		return author.getId();
	}

	@Override
	public Author getById(Long id) {
		return (Author)sessionfactory.getCurrentSession().load(Author.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Author> getAll() {
		return sessionfactory.getCurrentSession().createQuery("from Author").list();
	}

	@Override
	public boolean removeById(Long id) {
		Author author = getById(id);
		sessionfactory.getCurrentSession().delete(author);
		return true;
	}
	
	
	
	

}

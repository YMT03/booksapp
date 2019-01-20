package i.e.ramos.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import i.e.ramos.bo.Book;
import i.e.ramos.dao.interfaces.BookDAO;

@Repository
public class BookDAOImp implements BookDAO {

	@Autowired
	private SessionFactory sessionfactory;
	
	@Override
	public Long upsert(Book book) {
		sessionfactory.getCurrentSession().saveOrUpdate(book);
		return book.getId();
	}

	@Override
	public Book getById(Long id) {
		return (Book)sessionfactory.getCurrentSession().load(Book.class, id);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Book> getAll() {
		return sessionfactory.getCurrentSession().createQuery("from Book").list();
	}

	@Override
	public boolean removeById(Long id) {
		Book book = getById(id);
		sessionfactory.getCurrentSession().delete(book);
		return true;
	}
	
	

}

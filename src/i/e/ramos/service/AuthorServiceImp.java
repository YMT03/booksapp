package i.e.ramos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import i.e.ramos.bo.Author;
import i.e.ramos.dao.interfaces.AuthorDAO;
import i.e.ramos.service.interfaces.AuthorService;

@Service
@Transactional(rollbackFor=Exception.class)
public class AuthorServiceImp implements AuthorService {

	@Autowired
	private AuthorDAO authorDAO;
	@Override
	public Long saveAuthor(Author author) {
		return authorDAO.save(author);
	}

	@Override
	public Author getAuthorById(Long id) {
		return authorDAO.getById(id);
	}

	@Override
	public List<Author> getAllAuthors() {
		return authorDAO.getAll();
	}

	@Override
	public boolean removeAuthorById(Long id) {
		return authorDAO.removeById(id);
	}

	@Override
	public Long updateAuthor(Author author) {
		return authorDAO.update(author);
	}
	
}

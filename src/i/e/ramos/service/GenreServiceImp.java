package i.e.ramos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import i.e.ramos.bo.Genre;
import i.e.ramos.dao.interfaces.GenreDAO;
import i.e.ramos.service.interfaces.GenreService;

@Service
@Transactional(rollbackFor=Exception.class)
public class GenreServiceImp implements GenreService {

	@Autowired
	private GenreDAO genreDAO;
	@Override
	public Long upsertGenre(Genre genre) {
		return genreDAO.upsert(genre);
	}

	@Override
	public Genre getGenreById(Long id) {
		return genreDAO.getById(id);
	}

	@Override
	public List<Genre> getAllGenres() {
		return genreDAO.getAll();
	}

	@Override
	public boolean removeGenreById(Long id) {
		return genreDAO.removeById(id);
	}

}

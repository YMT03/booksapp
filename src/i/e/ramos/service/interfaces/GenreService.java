package i.e.ramos.service.interfaces;

import java.util.List;
import i.e.ramos.bo.Genre;

public interface GenreService {
	
	Long saveGenre(Genre genre);
	Genre getGenreById(Long id);
	List<Genre> getAllGenres();
	boolean removeGenreById(Long id);
	Long updateGenre(Genre genre);

}

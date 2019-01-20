package i.e.ramos.dao.interfaces;

import java.util.List;
import i.e.ramos.bo.Genre;

public interface GenreDAO {
	
	Long upsert(Genre genre);
	Genre getById(Long id);
	List<Genre> getAll();
	boolean removeById(Long id);

}

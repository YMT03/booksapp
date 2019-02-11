package i.e.ramos.dao.interfaces;

import java.util.List;
import i.e.ramos.bo.Banner;

public interface BannerDAO {
	
	Long upsert(Banner banner);
	Banner getById(Long id);
	List<Banner> getAll();
	boolean removeById(Long id);
	
}

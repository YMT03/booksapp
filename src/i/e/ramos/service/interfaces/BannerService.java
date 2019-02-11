package i.e.ramos.service.interfaces;

import java.util.List;
import i.e.ramos.bo.Banner;

public interface BannerService {
	
	Long upsertBanner(Banner banner);
	Banner getBannerById(Long id);
	List<Banner> getAllBanners();
	boolean removeBannerById(Long id);
	
}

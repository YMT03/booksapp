package i.e.ramos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import i.e.ramos.bo.Author;
import i.e.ramos.bo.Banner;
import i.e.ramos.dao.interfaces.AuthorDAO;
import i.e.ramos.dao.interfaces.BannerDAO;
import i.e.ramos.service.interfaces.AuthorService;
import i.e.ramos.service.interfaces.BannerService;

@Service
@Transactional(rollbackFor=Exception.class)
public class BannerServiceImp implements BannerService {

	@Autowired
	private BannerDAO bannerDAO;
	@Override
	public Long upsertBanner(Banner banner) {
		return bannerDAO.upsert(banner);
	}

	@Override
	public Banner getBannerById(Long id) {
		return bannerDAO.getById(id);
	}

	@Override
	public List<Banner> getAllBanners() {
		return bannerDAO.getAll();
	}

	@Override
	public boolean removeBannerById(Long id) {
		return bannerDAO.removeById(id);
	}
	
}

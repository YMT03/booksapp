package i.e.ramos.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import i.e.ramos.bo.Author;
import i.e.ramos.bo.Genre;
import i.e.ramos.bo.Publisher;
import i.e.ramos.service.interfaces.AuthorService;
import i.e.ramos.service.interfaces.GenreService;
import i.e.ramos.service.interfaces.PublisherService;

@Controller
@RequestMapping("/genres")
public class GenreController {
	
	@Autowired
	GenreService genreService;
	
	@RequestMapping(value= "", method=RequestMethod.GET )
	public String home(Model model) {
		Genre genre= new Genre();
		model.addAttribute(genre);
		model.addAttribute("genres",genreService.getAllGenres());
		return "genres/home";
	}
	
	@RequestMapping(value= "/remove", method=RequestMethod.GET )
	public String remove(Model model, @RequestParam("id") Long id) {
		genreService.removeGenreById(id);
		return "redirect:/genres";
	}


}

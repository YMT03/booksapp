package i.e.ramos.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import i.e.ramos.bo.Author;
import i.e.ramos.bo.Genre;
import i.e.ramos.bo.Publisher;
import i.e.ramos.constants.messages.SuccessMsg;
import i.e.ramos.controller.form.GenreForm;
import i.e.ramos.service.interfaces.AuthorService;
import i.e.ramos.service.interfaces.GenreService;
import i.e.ramos.service.interfaces.PublisherService;

@Controller
@RequestMapping("/genres")
public class GenreController {
	
	@Autowired
	GenreService genreService;
	
	@GetMapping("")
	public String home(Model model) {
		model.addAttribute("genres",genreService.getAllGenres());
		return "genres/home";
	}
	
	@GetMapping("/add")
	public String add(Model model, @ModelAttribute("genre") GenreForm genreForm) {
		return "genres/form";
	}
	
	@GetMapping("/edit")
	public String edit(Model model, @RequestParam("id") Long id) {
		model.addAttribute("genre", new GenreForm(genreService.getGenreById(id)));
		return "genres/form";
	}
	
	@PostMapping("/save")
	public String save(Model model, @ModelAttribute("genre") @Valid GenreForm genreForm, BindingResult result, RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {			
			model.addAttribute("errorMsgs", getErrors(result));
			return "genres/form";
		}
		
		redirectAttributes.addFlashAttribute("successMsgs",getSuccessMsgs(genreForm.getId()!=null));
		genreService.upsertGenre(genreForm.getGenre());
		return "redirect:/genres";
		
	}
		
	
	@GetMapping(value= "/remove")
	public String remove(Model model, @RequestParam("id") Long id) {
		genreService.removeGenreById(id);
		return "redirect:/genres";
	}

	//////////////////////////////////////////////////////////////////////////////////////
	
	
	private List<String> getSuccessMsgs(boolean alreadyExists){
		if(alreadyExists)
			return Arrays.asList(SuccessMsg.GENRE_EDITED_SUCCESSFULY);
		else
			return Arrays.asList(SuccessMsg.GENRE_CREATED_SUCCESSFULY);
	}
	
	private Object getErrors(BindingResult result) {
		List<String> errorsList = new ArrayList<>();
		result.getAllErrors().forEach(x->errorsList.add(x.getDefaultMessage()));
		return errorsList;
	}

	
}

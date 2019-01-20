package i.e.ramos.controller;

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
import i.e.ramos.service.interfaces.AuthorService;

@Controller
@RequestMapping("/authors")
public class AuthorController {
	
	@Autowired
	AuthorService authorService;
	
	@GetMapping("")
	public String home(Model model) {
		model.addAttribute("authors",authorService.getAllAuthors());
		return "authors/home";
	}
	
	@GetMapping("/remove")
	public String remove(Model model, @RequestParam("id") Long id) {
		authorService.removeAuthorById(id);
		return "redirect:/authors";
	}


}

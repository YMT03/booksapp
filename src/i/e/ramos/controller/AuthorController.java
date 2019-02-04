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
import i.e.ramos.constants.messages.SuccessMsg;
import i.e.ramos.controller.form.AuthorForm;
import i.e.ramos.service.interfaces.AuthorService;

@Controller
@RequestMapping("/authors")
public class AuthorController {
	
	@Autowired
	AuthorService authorService;
	
	
	/**HOME**/
	@GetMapping("")
	public String home(Model model) {
		model.addAttribute("authors",authorService.getAllAuthors());
		return "authors/home";
	}
	
	/**ADD OR EDIT AUTHOR -> ADDING MODEL ATTRIBUTE TO FORM**/
	@GetMapping("/form")
	public String form(Model model, @ModelAttribute("author") AuthorForm author, @RequestParam(value="id",required=false) Long id) {
		if(id!=null)
			model.addAttribute("author",new AuthorForm(authorService.getAuthorById(id)));
		return "authors/form";
	}
	
	@PostMapping("/save")
	public String save(Model model, @ModelAttribute("author") @Valid AuthorForm authorForm, BindingResult result, RedirectAttributes redirectAttributes) {
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("errorMsgs", getErrors(result));
			redirectAttributes.addFlashAttribute("author", authorForm);
			return "redirect:/authors/form";
		}
		redirectAttributes.addFlashAttribute("successMsgs",getSuccessMsgs(authorForm.getId()!=null));
		authorService.upsertAuthor(authorForm.getAuthor());
		return "redirect:/authors";
	}

	/**DELETE**/
	@GetMapping("/remove")
	public String remove(Model model, @RequestParam("id") Long id, RedirectAttributes redirectAttributes) {
		authorService.removeAuthorById(id);
		redirectAttributes.addFlashAttribute("successMsgs", Arrays.asList(SuccessMsg.AUTHOR_REMOVED_SUCCESSFULY));
		return "redirect:/authors";
	}
	
	
	//////////////////////////////////////////////////////////////////////////////////////
	
	
	private List<String> getSuccessMsgs(boolean alreadyExists){
		if(alreadyExists)
			return Arrays.asList(SuccessMsg.AUTHOR_EDITED_SUCCESSFULY);
		else
			return Arrays.asList(SuccessMsg.AUTHOR_CREATED_SUCCESSFULY);
	}
	
	private Object getErrors(BindingResult result) {
		List<String> errorsList = new ArrayList<>();
		result.getAllErrors().forEach(x->errorsList.add(x.getDefaultMessage()));
		return errorsList;
	}


}

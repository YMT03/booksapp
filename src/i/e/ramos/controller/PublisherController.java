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
import i.e.ramos.bo.Publisher;
import i.e.ramos.constants.messages.SuccessMsg;
import i.e.ramos.controller.form.PublisherForm;
import i.e.ramos.service.interfaces.AuthorService;
import i.e.ramos.service.interfaces.PublisherService;

@Controller
@RequestMapping("/publishers")
public class PublisherController {

	@Autowired
	PublisherService publisherService;

	@GetMapping("")
	public String home(Model model) {
		model.addAttribute("publishers",publisherService.getAllPublishers());
		return "publishers/home";
	}
	
	@GetMapping("/add")
	public String add(Model model, @ModelAttribute("publisher") PublisherForm publisherForm) {
		return "publishers/form";
	}
	
	@GetMapping("/edit")
	public String add(Model model, @RequestParam("id") Long id) {
		model.addAttribute("publisher",new PublisherForm(publisherService.getPublisherById(id)));
		return "publishers/form";
	}
	

	@PostMapping("/save")
	public String save(Model model, @ModelAttribute("publisher") @Valid PublisherForm publisherForm, BindingResult result, RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()) {			
			model.addAttribute("errorMsgs", getErrors(result));
			return "publishers/form";
		}
		
		redirectAttributes.addFlashAttribute("successMsgs",getSuccessMsgs(publisherForm.getId()!=null));
		publisherService.upsertPublisher(publisherForm.getPublisher());
		return "redirect:/publishers";
	}

	@GetMapping("/remove")
	public String remove(Model model, @RequestParam("id") Long id) {
		publisherService.removePublisherById(id);
		return "redirect:/publishers";
	}



	//////////////////////////////////////////////////////////////////////////////////////


	private List<String> getSuccessMsgs(boolean alreadyExists){
		if(alreadyExists)
			return Arrays.asList(SuccessMsg.PUBLISHER_EDITED_SUCCESSFULY);
		else
			return Arrays.asList(SuccessMsg.PUBLISHER_CREATED_SUCCESSFULY);
	}

	private Object getErrors(BindingResult result) {
		List<String> errorsList = new ArrayList<>();
		result.getAllErrors().forEach(x->errorsList.add(x.getDefaultMessage()));
		return errorsList;
	}


}

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
import i.e.ramos.bo.Publisher;
import i.e.ramos.service.interfaces.AuthorService;
import i.e.ramos.service.interfaces.PublisherService;

@Controller
@RequestMapping("/publishers")
public class PublisherController {
	
	@Autowired
	PublisherService publisherService;
	
	@RequestMapping(value= "", method=RequestMethod.GET )
	public String home(Model model) {
		Publisher publisher = new Publisher();
		model.addAttribute(publisher);
		model.addAttribute("publishers",publisherService.getAllPublishers());
		return "publishers/home";
	}
	
	@RequestMapping(value= "/add", method=RequestMethod.POST )
	public String add(Model model, @ModelAttribute("publisher") @Valid Publisher publisher, BindingResult bindingResult, RedirectAttributes attributes) {
		if(bindingResult.hasErrors()) {
			System.out.println("Error");
			attributes.addFlashAttribute("errores",bindingResult.getAllErrors());
			return "redirect:/publishers";
		}
		publisherService.savePublisher(publisher);
		return "redirect:/publishers";
	}
	
	@RequestMapping(value= "/edit", method=RequestMethod.GET )
	public String edit(Model model, @RequestParam("id") Long id) {
		Publisher publisher= publisherService.getPublisherById(id);
		model.addAttribute(publisher);
		return "publishers/edit";
	}
	
	@RequestMapping(value= "/edit", method=RequestMethod.POST )
	public String edit(Model model, @ModelAttribute("publisher") Publisher publisher, BindingResult bindingResult) {
		System.out.println(publisher.getId());
		publisherService.updatePublisher(publisher);
		return "redirect:/publishers";
	}
	
	@RequestMapping(value= "/remove", method=RequestMethod.GET )
	public String remove(Model model, @RequestParam("id") Long id) {
		publisherService.removePublisherById(id);
		return "redirect:/publishers";
	}


}

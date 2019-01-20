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
import i.e.ramos.bo.Book;
import i.e.ramos.controller.form.BookForm;
import i.e.ramos.service.interfaces.BookService;

@Controller
@RequestMapping(value="/books")
public class BookController {


	@Autowired
	BookService bookService;

	@GetMapping("")
	public String home(Model model) {
		model.addAttribute("books",bookService.getAllBooks());
		return "books/home";
	}

	@GetMapping("/remove")
	public String remove(Model model, @RequestParam("id") Long id) {
		bookService.removeBookById(id);
		return "redirect:/books";
	}

}

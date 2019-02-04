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
import i.e.ramos.bo.Book;
import i.e.ramos.bo.Genre;
import i.e.ramos.constants.messages.SuccessMsg;
import i.e.ramos.controller.form.BookForm;
import i.e.ramos.service.interfaces.AuthorService;
import i.e.ramos.service.interfaces.BookService;
import i.e.ramos.service.interfaces.GenreService;
import i.e.ramos.service.interfaces.PublisherService;

@Controller
@RequestMapping(value="/books")
public class BookController {


	@Autowired
	BookService bookService;
	@Autowired
	AuthorService authorService;
	@Autowired
	PublisherService publisherService;
	@Autowired
	GenreService genreService;

	@GetMapping("")
	public String home(Model model) {
		model.addAttribute("books",bookService.getAllBooks());
		return "books/home";
	}
	
	/**ADD OR EDIT BOOK -> ADDING MODEL ATTRIBUTE TO FORM**/
	@GetMapping("/form")
	public String form(Model model, @ModelAttribute("book") BookForm book, @RequestParam(value="id",required=false) Long id){
		if(id!=null)
			model.addAttribute("book", new BookForm(bookService.getBookById(id)));
		model.addAttribute("authors",authorService.getAllAuthors());
		model.addAttribute("publishers",publisherService.getAllPublishers());
		model.addAttribute("genres",genreService.getAllGenres());
		return "books/form";
	}

	@PostMapping("/save")
	public String save(Model model, @ModelAttribute("book") @Valid BookForm bookForm, BindingResult result, RedirectAttributes redirectAttributes) {
		if(result.hasErrors()) {
			redirectAttributes.addFlashAttribute("errorMsgs", getErrors(result));
			redirectAttributes.addFlashAttribute("book", bookForm);
			return "redirect:/books/form";
		}
		Book book = bookForm.getBook();
		List<Genre> genres = new ArrayList<>();
		bookForm.getGenresIds().forEach(x->genres.add(genreService.getGenreById(x)));
		book.setGenre(genres);
		book.setPublisher(publisherService.getPublisherById(bookForm.getPublisherId()));
		book.setAuthor(authorService.getAuthorById(bookForm.getAuthorId()));
		bookService.upsertBook(book);
		redirectAttributes.addFlashAttribute("successMsgs",getSuccessMsgs(bookForm.getId()!=null));
		return "redirect:/books";
	}

	@GetMapping("/remove")
	public String remove(Model model, @RequestParam("id") Long id, RedirectAttributes redirectAttributes) {
		bookService.removeBookById(id);
		redirectAttributes.addFlashAttribute("successMsgs", Arrays.asList(SuccessMsg.BOOK_REMOVED_SUCCESSFULY));
		return "redirect:/books";
	}
	//////////////////////////////////////////////////////////////////////////////////////


	private List<String> getSuccessMsgs(boolean alreadyExists){
		if(alreadyExists)
			return Arrays.asList(SuccessMsg.BOOK_EDITED_SUCCESSFULY);
		else
			return Arrays.asList(SuccessMsg.BOOK_CREATED_SUCCESSFULY);
	}

	private Object getErrors(BindingResult result) {
		List<String> errorsList = new ArrayList<>();
		result.getAllErrors().forEach(x->errorsList.add(x.getDefaultMessage()));
		return errorsList;
	}
}

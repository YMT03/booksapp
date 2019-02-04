package i.e.ramos.controller.form;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Constraint;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PositiveOrZero;
import javax.validation.constraints.Size;

import i.e.ramos.bo.Author;
import i.e.ramos.bo.Book;
import i.e.ramos.bo.Genre;
import i.e.ramos.constants.messages.ValidationMsg;

public class BookForm {
	
	private Long id;
	@NotNull(message = ValidationMsg.FORM_BOOK_PUBLISHER)
	@PositiveOrZero(message = ValidationMsg.FORM_BOOK_PUBLISHER)
	private Long publisherId;
	@NotNull(message = ValidationMsg.FORM_BOOK_AUTHOR)
	@PositiveOrZero(message = ValidationMsg.FORM_BOOK_AUTHOR)
	private Long authorId;
	@NotBlank(message=ValidationMsg.FORM_TITLE_BLANK)
	@Size(max=100, message=ValidationMsg.FORM_TITLE_SIZE)
	private String title;	
	@PositiveOrZero(message=ValidationMsg.FORM_PRICE_POSITIVE)
	private Double price;
	private List<Long> genresIds = new ArrayList<>();
	private String publicationDate;
	private Integer rating;
	private String synopsis;
	private String image = "default.jpg";
	private String state = "Activo";
	
	public BookForm() {}
	
	public BookForm(Book book) {
		this.id = book.getId();
		this.title = book.getTitle();
		this.authorId = book.getAuthor().getId();
		this.state = book.getState();
		this.image = book.getImage();
		this.publicationDate = book.getPublicationDate();
		this.publisherId = book.getPublisher().getId();
		this.rating = book.getRating();
		this.synopsis = book.getSynopsis();
		this.price = book.getPrice();
		book.getGenre().forEach(x->genresIds.add(x.getId()));
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Long getPublisherId() {
		return publisherId;
	}
	public void setPublisherId(Long publisherId) {
		this.publisherId = publisherId;
	}

	public Long getAuthorId() {
		return authorId;
	}

	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}

	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}

	public List<Long> getGenresIds() {
		return genresIds;
	}

	public void setGenresIds(List<Long> genresIds) {
		this.genresIds = genresIds;
	}

	public String getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(String publicationDate) {
		this.publicationDate = publicationDate;
	}
	public Integer getRating() {
		return rating;
	}
	public void setRating(Integer rating) {
		this.rating = rating;
	}
	public String getSynopsis() {
		return synopsis;
	}
	public void setSynopsis(String synopsis) {
		this.synopsis = synopsis;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	public Book getBook() {
		Book book = new Book();
		book.setId(this.id);
		book.setTitle(this.title);
		book.setState(this.state);
		book.setImage(this.image);
		book.setRating(this.rating);
		book.setPrice(this.price);
		book.setSynopsis(this.synopsis);
		book.setPublicationDate(this.publicationDate);
		return book;
	}
	

}

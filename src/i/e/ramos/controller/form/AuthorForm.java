package i.e.ramos.controller.form;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import i.e.ramos.bo.Author;
import i.e.ramos.constants.messages.ValidationMsg;

public class AuthorForm {

	private Long id;
	@NotBlank(message=ValidationMsg.FORM_AUTHOR_NAME)
	private String name;
	@NotBlank(message=ValidationMsg.FORM_AUTHOR_LASTNAME)
	private String lastName;

	public AuthorForm() {}

	public AuthorForm(Author author) {
		this.id = author.getId();
		this.name = author.getName();
		this.lastName = author.getLastName();
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Author getAuthor() {
		Author author = new Author();
		author.setId(id);
		author.setName(name);
		author.setLastName(lastName);		
		return author;
	}


}

package i.e.ramos.controller.form;

import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import i.e.ramos.bo.Author;
import i.e.ramos.constants.messages.ValidationMsg;

public class AuthorForm {
	
	@NotBlank(message=ValidationMsg.FORM_AUTHOR_NAME)
	private String name;
	@NotBlank(message=ValidationMsg.FORM_AUTHOR_LASTNAME)
	private String lastName;
	
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
	
	public Author toAuthor() {
		Author author = new Author();
		author.setName(name);
		author.setLastName(lastName);
		return author;
	}
	

}

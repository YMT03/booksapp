package i.e.ramos.controller.form;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

import i.e.ramos.bo.Publisher;
import i.e.ramos.constants.messages.ValidationMsg;

public class PublisherForm {
	
	private Long id;
	@NotBlank(message=ValidationMsg.FORM_NAME_BLANK)
	@Size(max=50, message=ValidationMsg.FORM_PUBLISHER_NAME_SIZE)
	private String name;
	
	public PublisherForm() {}
	public PublisherForm(Publisher publisher) {
		this.id = publisher.getId();
		this.name = publisher.getName();
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
	
	public Publisher getPublisher() {
		Publisher publisher = new Publisher();
		publisher.setId(this.id);
		publisher.setName(this.name);
		return publisher;
	}
	

}

$('#modalConfirm').on('show.bs.modal', function(event) {
	var button = $(event.relatedTarget)
	var link = button.data('href')
	document.querySelector("#dynamicLink").setAttribute("href", link)
})
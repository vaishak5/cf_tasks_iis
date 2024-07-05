function validation() {
    var value = document.forms["checkForm"]["value"].value;
    if (isNaN(value) || value <= 0 || value === '') {
        alert("Please enter something in the field!!");
		event.preventDefault();
    }
    else{
		return true;
	}
}
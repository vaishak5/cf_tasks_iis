function myFunction() {
    var fileInput = document.getElementById('myfile').files[0].size;
	fileInput=fileInput/(1024*1024);
        if (fileInput > 1) {
		    alert("Upload image greater than 1 MB");
            event.preventDefault();
	}
}



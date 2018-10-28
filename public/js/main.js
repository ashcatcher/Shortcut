$('#tinyURLForm').submit(function(event) {
    event.preventDefault();
    var xhttp = new XMLHttpRequest();
    url = encodeURIComponent(document.getElementById("InputURL").value)
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4) {
            if (this.status == 200) {
                console.log(document.getElementById("tinyURL"));
                document.getElementById("tinyURL").innerHTML = this.responseText;
            }
        }
    }
    xhttp.open("POST", "/", true);
    xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhttp.send(`url=${url}`);
});

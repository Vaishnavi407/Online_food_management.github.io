
window.addEventListener("scroll", function(){
	var header=document.querySelector("header");
	header.classList.toggle("sticky", window.scrollY > 0);
});


function toggleMenu(){
	var menuToggle=document.querySelector(".toggle");
	var menu=document.querySelector(".menu");
	
	menuToggle.classList.toggle("active");
	menu.classList.toggle("active");
}

function videoUrl(hmmmmmm){
	document.getElementById("slider").src=hmmmmmm;
}

function greet(){
	alert("You Are Successfully registered...!!!");
}

var state=false;
function toggle(){
	if(state=false){
		document.getElementById("password").setAttribute("type","password");
		document.getElementById("eye").style.color='#7a797e';
		state=false;
	}
	else{
		document.getElementById("password").setAttribute("type","text");
		document.getElementById("eye").style.color='#5887ef';
		state=true;
	}
}
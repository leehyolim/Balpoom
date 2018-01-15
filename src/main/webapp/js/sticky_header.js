var headerHeight=document.getElementById("header_header");
var navbarHeight=document.getElementById("header_navbar");

//var header_header=headerHeight.offsetHeight;
//var header_navbar=navbarHeight.offsetHeight;


function stop(){
	if(window.pageYOffset > 180)
	{
		navbarHeight.style.position="fixed";
		navbarHeight.style.top="0px";
	}
	else
	{
		navbarHeight.style.position="static";
		navbarHeight.style.top="0px";
	}
}
window.addEventListener("scroll", stop);

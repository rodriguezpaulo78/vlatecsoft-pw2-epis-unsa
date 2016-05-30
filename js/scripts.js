//Open
$(document).ready(function(){
	$(".boton").on("click",function(){
		$("#lightbox").toggleClass("item6");
	});
	$("span").on("click",function(){
		$("#lightbox").removeClass("item6");
	});
});
//Accordion footer
$(document).ready(function(){
	$( "#accordion" ).accordion({
	collapsible: true,
	active: false,
	heightStyle: "content"
	});
});
//Box perfiles
$(document).ready(function(){
	$(".perfiles ul.amparo").hover(function(){
		$(".perfiles ul.amparo li.name").toggleClass("muestrate");
	});
	$(".perfiles ul.nicolas").hover(function(){
		$(".perfiles ul.nicolas li.name").toggleClass("muestrate");
	});
	$(".perfiles ul.carlos").hover(function(){
		$(".perfiles ul.carlos li.name").toggleClass("muestrate");
	});
	$(".perfiles ul.luis").hover(function(){
		$(".perfiles ul.luis li.name").toggleClass("muestrate");
	});
	$(".perfiles ul.william").hover(function(){
		$(".perfiles ul.william li.name").toggleClass("muestrate");
	});
	$(".perfiles ul.oscar").hover(function(){
		$(".perfiles ul.oscar li.name").toggleClass("muestrate");
	});
});
//Nav Responsive
$(document).ready(function(){
	$("i.icon-menu").on("click", function(){
		$(".nav-mobil").addClass("nav-mobile");
		$("i.icon-cancel").on("click", function(){
			$(".nav-mobil").removeClass("nav-mobile");
		});
	});
	//$("ul#botones li:last-child").on("click", function(){
	//	$("ul#botones li:last-child").addClass("item6");
	//});
});
//Tabs Documentation
$(document).ready(function () {
	$("#tabs").tabs();
});
//Tabs beneficios
$(document).ready(function(){
	  $('ul.nav-two a[href*=#]:not([href=#])').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {

	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	      if (target.length) {
	        $('html,body').animate({
	          scrollTop: target.offset().top
	        }, 1000);
	        return false;
	      }
	    }
	});
});
//MixPanel
(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.union people.track_charge people.clear_charges people.delete_user".split(" ");
for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="undefined"!==typeof MIXPANEL_CUSTOM_LIB_URL?MIXPANEL_CUSTOM_LIB_URL:"//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);
mixpanel.init("f96e870527eb6fa8f111ad075b211124");
//mixpanel.init("holi");
//End Mixpanel
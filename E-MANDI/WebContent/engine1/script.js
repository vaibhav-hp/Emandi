// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Generated by WOW Slider 2.7.1
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
function ws_blast(l,e,h){var d=jQuery;var a=l.distance||1;h=h.parent();var f=d("<div>").addClass("ws_effect");h.css({overflow:"visible"}).append(f);f.css({position:"absolute",left:0,top:0,width:"100%",height:"100%","z-index":8});var c=l.cols;var k=l.rows;var g=[];var b=[];function i(){var p=Math.max((l.width||f.width())/(l.height||f.height())||3,3);c=c||Math.round(p<1?3:3*p);k=k||Math.round(p<1?3/p:3);for(var n=0;n<c*k;n++){var o=n%c;var m=Math.floor(n/c);d([b[n]=document.createElement("div"),g[n]=document.createElement("div")]).css({position:"absolute",overflow:"hidden"}).appendTo(f).append(d("<img>").css({position:"absolute"}))}g=d(g);b=d(b);j(g);j(b,true)}function j(r,p,m){var q=f.width();var o=f.height();var n={left:d(window).scrollLeft(),top:d(window).scrollTop(),width:d(window).width(),height:d(window).height()};d(r).each(function(x){var w=x%c;var u=Math.floor(x/c);if(p){var A=a*q*(2*Math.random()-1)+q/2;var y=a*o*(2*Math.random()-1)+o/2;var z=f.offset();z.left+=A;z.top+=y;if(z.left<n.left){A-=z.left+n.left}if(z.top<n.top){y-=z.top+n.top}var v=(n.left+n.width)-z.left-q/c;if(0>v){A+=v}var t=(n.top+n.height)-z.top-o/k;if(0>t){y+=t}}else{var A=q*w/c;var y=o*u/k}d(this).find("img").css({left:-(q*w/c)+"px",top:-(o*u/k)+"px",width:q+"px",height:o+"px"});var s={left:A+"px",top:y+"px",width:q/c+"px",height:o/k+"px"};if(m){d(this).animate(s,{queue:false,duration:l.duration})}else{d(this).css(s)}})}this.go=function(m,o){if(!g.length){i()}f.show();d(g).stop(1).css({opacity:1,"z-index":3}).find("img").attr("src",e.get(o).src);d(b).stop(1).css({opacity:0,"z-index":2}).find("img").attr("src",e.get(m).src);j(b,false,true);d(b).animate({opacity:1},{queue:false,easing:"easeInOutExpo",duration:l.duration});j(g,true,true);d(g).animate({opacity:0},{queue:false,easing:"easeInOutExpo",duration:l.duration,complete:function(){h.find("ul").css({left:-m+"00%"});f.hide()}});var n=b;b=g;g=n;return m}};// -----------------------------------------------------------------------------------
// http://wowslider.com/
// JavaScript Wow Slider is a free software that helps you easily generate delicious 
// slideshows with gorgeous transition effects, in a few clicks without writing a single line of code.
// Generated by WOW Slider 2.7.1
//
//***********************************************
// Obfuscated by Javascript Obfuscator
// http://javascript-source.com
//***********************************************
jQuery("#wowslider-container1").wowSlider({effect:"blast",prev:"",next:"",duration:20*100,delay:20*100,width:960,height:360,autoPlay:true,stopOnHover:false,loop:false,bullets:true,caption:true,captionEffect:"slide",controls:true,logo:"engine1/loading.gif",onBeforeStep:0,images:0});
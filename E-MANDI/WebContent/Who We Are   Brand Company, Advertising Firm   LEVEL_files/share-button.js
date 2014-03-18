
oArrowLeft  	= null;
oArrowRight		= null;
oSocialWrapper	= null;
oSocialShare	= null;
oSocialList		= null;

/**
 * Indicator for the number of list items the share 
 * button can scroll through.
 * (Used to prevent scrolling beyond available list items) 
 */
var iShareListItems = 0;

/**
 * Indicator for the current list item we're viewing 
 */
var iSharePosition = 1;


/**
 * Time in milleseconds for elements to fade in/out.
 */
var iShareFadeTime = 350;

/**
 * Time in milleseconds for elements to scroll left/right
 */
var iShareScrollTime = 500;

jQuery(document).ready(function() {
	
	oArrowLeft  	= jQuery('#arrow-left');
	oArrowRight		= jQuery('#arrow-right');
	oSocialWrapper	= jQuery('.social-wrapper');
	oSocialShare	= jQuery('#social-share')
	oSocialList		= jQuery('#social-list');
	
	oArrowLeft.hide();
	oArrowRight.hide();
	
	oSocialList.find('li').each(function() {
		iShareListItems++;
	});
	
	oSocialWrapper.bind('mouseenter', function() {
		socialMouseEnter();
	});
	
	oSocialWrapper.bind('mouseleave', function() {
		socialMouseLeave();
	});
	
	socialBindArrows();
	
});


function socialMouseEnter() {
	if (iSharePosition != 1)
	{
		oArrowLeft.fadeIn(iShareFadeTime);
	}
	
	if (iSharePosition != iShareListItems)
	{
		oArrowRight.fadeIn(iShareFadeTime);
	}
	
	oSocialShare.fadeOut(iShareFadeTime);
	oSocialList.fadeIn(iShareFadeTime);
}


function socialMouseLeave() {
	oArrowLeft.fadeOut(iShareFadeTime);
	oArrowRight.fadeOut(iShareFadeTime);
	oSocialShare.fadeIn(iShareFadeTime);
	oSocialList.fadeOut(iShareFadeTime);
}

function socialArrowRight() {
	if (iSharePosition ==  1)
	{
		oArrowLeft.fadeIn(iShareFadeTime)
	}
	
	oSocialList.animate({ left: '-=50' }, iShareScrollTime, function() {
		socialBindArrows();
	});
	
	iSharePosition++;
	
	if (iSharePosition == iShareListItems)
	{
		oArrowRight.fadeOut(iShareFadeTime);
	}
}

function socialArrowLeft() {
	if (iSharePosition == iShareListItems)
	{
		oArrowRight.fadeIn(iShareFadeTime);
	}
	
	oSocialList.animate({ left: '+=50' }, iShareScrollTime, function() {
		socialBindArrows();
	});
	
	iSharePosition--;
	
	if (iSharePosition == 1)
	{
		oArrowLeft.fadeOut(iShareFadeTime);
	}
}

function socialBindArrows() {
	oArrowRight.bind('click', function() {
		socialUnbindArrows();
		socialArrowRight();
	});
	
	oArrowLeft.bind('click', function() {
		socialUnbindArrows();
		socialArrowLeft();
	});
}

function socialUnbindArrows() {
	oArrowRight.unbind('click');
	oArrowLeft.unbind('click');
}

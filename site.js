
$.extend($.easing,
{
    def: 'easeOutQuad',
    easeInOutExpo: function (x, t, b, c, d) {
        if (t==0) return b;
        if (t==d) return b+c;
        if ((t/=d/2) < 1) return c/2 * Math.pow(2, 10 * (t - 1)) + b;
        return c/2 * (-Math.pow(2, -10 * --t) + 2) + b;
    }
});

(function( $ ) {

    var settings;
    var disableScrollFn = false;
    var navItems;
    var navs = {}, sections = {};

    $.fn.navScroller = function(options) {
        settings = $.extend({
            scrollToOffset: 170,
            scrollSpeed: 800,
            activateParentNode: true,
        }, options );
        navItems = this;

        //attatch click listeners
    	navItems.on('click', function(event){
    		event.preventDefault();
            var navID = $(this).attr("href").substring(1);
            disableScrollFn = true;
            activateNav(navID);
            populateDestinations(); //recalculate these!
        	$('html,body').animate({scrollTop: sections[navID] - settings.scrollToOffset},
                settings.scrollSpeed, "easeInOutExpo", function(){
                    disableScrollFn = false;
                    window.location.hash = navID;
                }
            );
    	});

        //populate lookup of clicable elements and destination sections
        populateDestinations(); //should also be run on browser resize, btw

        // setup scroll listener
        $(document).scroll(function(){
            if (disableScrollFn) { return; }
            var page_height = $(window).height();
            var pos = $(this).scrollTop();
            for (i in sections) {
                if ((pos + settings.scrollToOffset >= sections[i]) && sections[i] < pos + page_height){
                    activateNav(i);
                }
            }
        });
    };

    function populateDestinations() {
        navItems.each(function(){
            var scrollID = $(this).attr('href').substring(1);
            navs[scrollID] = (settings.activateParentNode)? this.parentNode : this;
            sections[scrollID] = $(document.getElementById(scrollID)).offset().top;
        });
    }

    function activateNav(navID) {
        for (nav in navs) { $(navs[nav]).removeClass('active'); }
        $(navs[navID]).addClass('active');
    }
})( jQuery );


// lazy load images
document.addEventListener("DOMContentLoaded", function() {
	const imageObserver = new IntersectionObserver((entries, imgObserver) => {
		 entries.forEach((entry) => {
			  if (entry.isIntersecting) {
					const lazyImage = entry.target
					console.log("lazy loading ", lazyImage)
					lazyImage.src = lazyImage.dataset.src
			  }
		 })
	});
	const arr = document.querySelectorAll('img.lzy_img')
	arr.forEach((v) => {
		 imageObserver.observe(v);
	})
});


$(document).ready(function (){
    // call on all links that start an anchor/hash
    $('nav li a[href^="#"]').navScroller();

    //section divider icon click gently scrolls to reveal the section
	$(".sectiondivider").on('click', function(event) {
    	$('html,body').animate({scrollTop: $(event.target.parentNode).offset().top - 50}, 400, "linear");
	});

    //links going to other sections nicely scroll
	$(".container a").each(function(){
        if ($(this).attr("href").charAt(0) == '#'){
            $(this).on('click', function(event) {
        		event.preventDefault();
                var target = $(event.target).closest("a");
                var targetHight =  $(target.attr("href")).offset().top
            	$('html,body').animate({scrollTop: targetHight - 170}, 800, "easeInOutExpo", function() {
                    window.location.hash = $(this).attr("href").split('#')[1];
					});
            });
        }
	});


	// extremely basic search

	$('#glyphSearch').on('keyup', function(e) {
        gtag('event', 'glyph-search', {
            'event_category': 'via-input',
            'event_label': 'Cheat Sheet',
            'value': e.target && e.target.value
          });
        searchGlyphs();
    });

	function searchGlyphs() {
		console.log('searching');
		var input = $('#glyphSearch');
		var filter = input.val().toUpperCase();
		var container = $('#glyphCheatSheet');
		var i = 0;
		var elements = container.find('.column');
		var length = elements.length;
		var elementClassName, elementCodePoint;

		for (; i < length; i++) {
		 elementClassName = $(elements[i]).find('div.class-name');
		 elementCodePoint = $(elements[i]).find('div.codepoint');
		 if (elementClassName && elementCodePoint) {
            if (elementClassName.text().toUpperCase().indexOf(filter) > -1
                || elementCodePoint.text().toUpperCase().indexOf(filter) > -1
            ) {
              elementClassName.parent().show();
			} else {
              elementClassName.parent().hide();
			}
		 }
	  }
	}

	// extremely basic filtering on load:
	function getParameterByName(name, url) {
		 if (!url) url = window.location.href;
		 name = name.replace(/[\[\]]/g, "\\$&");
		 var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
			  results = regex.exec(url);
		 if (!results) return null;
		 if (!results[2]) return '';
		 return decodeURIComponent(results[2].replace(/\+/g, " "));
	}

	var set = getParameterByName('set');

	if (set) {
		$('#glyphSearch').val(set);
		searchGlyphs();
	}

});


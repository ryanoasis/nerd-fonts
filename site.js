
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

	$('#glyphSearch').on('keyup', debounce(function(e) {
        gtag('event', 'search-via-input', {
            'event_category': 'glyph-search',
            'event_label': 'Cheat Sheet : ' + (e.target && e.target.value),
            'value': e.target && e.target.value
          });
        searchGlyphs();
    }, 500));

    // Credit David Walsh (https://davidwalsh.name/javascript-debounce-function)
    // Returns a function, that, as long as it continues to be invoked, will not
    // be triggered. The function will be called after it stops being called for
    // N milliseconds. If `immediate` is passed, trigger the function on the
    // leading edge, instead of the trailing.
    function debounce(func, wait, immediate) {
        var timeout;
    
        return function executedFunction() {
        var context = this;
        var args = arguments;
            
        var later = function() {
            timeout = null;
            if (!immediate) func.apply(context, args);
        };
    
        var callNow = immediate && !timeout;
        
        clearTimeout(timeout);
    
        timeout = setTimeout(later, wait);
        
        if (callNow) func.apply(context, args);
        };
    }

	function searchGlyphs() {
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

    const set = getParameterByName('set');
    const onCheatSheet = window.location.href.indexOf('/cheat-sheet') !== -1;

	if (set) {
        if (onCheatSheet) {
            $('#glyphSearch').val(set);
            gtag('event', 'search-via-url', {
                'event_category': 'glyph-search',
                'event_label': 'Cheat Sheet : ' + set,
                'value': set
              });
            searchGlyphs();
        }
        else {
            gtag('event', 'search-via-redirect', {
                'event_category': 'glyph-search',
                'event_label': 'Cheat Sheet : ' + set,
                'value': set
              });
            // redirect to cheat sheet with param
            window.location.href = window.location.origin + "/cheat-sheet?set=" + set;
        }
    }
    
    /* hold on to yer' butts */

    // Copies a string to the clipboard. Must be called from within an 
    // event handler such as click. May return false if it failed, but
    // this is not always possible. Browser support for Chrome 43+, 
    // Firefox 42+, Safari 10+, Edge and IE 10+.
    // IE: The clipboard feature may be disabled by an administrator. By
    // default a prompt is shown the first time the clipboard is 
    // used (per session).
    function copyToClipboard(text) {
        if (window.clipboardData && window.clipboardData.setData) {
            // IE specific code path to prevent textarea being shown while dialog is visible.
            return clipboardData.setData("Text", text); 

        } else if (document.queryCommandSupported && document.queryCommandSupported("copy")) {
            var textarea = document.createElement("textarea");
            textarea.textContent = text;
            textarea.style.position = "fixed";  // Prevent scrolling to bottom of page in MS Edge.
            document.body.appendChild(textarea);
            textarea.select();
            try {
                return document.execCommand("copy");  // Security exception may be thrown by some browsers.
            } catch (ex) {
                console.warn("Copy to clipboard failed.", ex);
                return false;
            } finally {
                document.body.removeChild(textarea);
            }
        }
    }

      document.getElementById('glyphCheatSheet').addEventListener("mouseenter", function(e) {
        if(e.target.className === "column") {
            console.log("entered column");

            // add Node
            const newNode = document.createElement('span');
            const copyTextNode = document.createElement('span');
            const copyGlyphNode = document.createElement('span');
            const copyClassNode = document.createElement('span');
            const copyCodePoint = document.createElement('span');
            newNode.className = 'glyph-popout-copy-clipboard';
            copyTextNode.innerText = 'Copy';
            copyGlyphNode.innerText = 'Icon';
            copyClassNode.innerText = 'Class';
            copyCodePoint.innerText = 'Hex';
            copyGlyphNode.title = 'Copy Icon to Clipboard'
            copyClassNode.title = 'Copy Class Name to Clipboard'
            copyCodePoint.title = 'Copy Hex Code Point to Clipboard'
            copyGlyphNode.className = 'copy-glyph';
            copyClassNode.className = 'copy-class';
            copyCodePoint.className = 'copy-hex';
            newNode.appendChild(copyTextNode);
            newNode.appendChild(copyGlyphNode);
            newNode.appendChild(copyClassNode);
            newNode.appendChild(copyCodePoint);
            e.target.children[0].before(newNode);
        }
      },true);

      document.getElementById('glyphCheatSheet').addEventListener("mouseleave", function(e) {
        if(e.target.className === "column") {
            console.log("left column");
            e.target.querySelector('.glyph-popout-copy-clipboard').remove()
        }
      },true);

      document.getElementById('glyphCheatSheet').addEventListener('click', function (event) {
          let textToCopy = '';
          if (event.target.parentNode.className === 'glyph-popout-copy-clipboard') {
            if (event.target.className === 'copy-class') {
              textToCopy = event.target.parentNode.parentNode.querySelector('.class-name').innerText;
            }
            else if (event.target.className === 'copy-hex') {
                textToCopy = event.target.parentNode.parentNode.querySelector('.codepoint').innerText;
            }
            else if (event.target.className === 'copy-glyph') {
                textToCopy = window.getComputedStyle(
                    document.querySelector(`.${event.target.parentNode.parentNode.querySelector('.class-name').innerText}`), ':before'
                ).getPropertyValue('content').replace(/"/g,'');
            }
            copyToClipboard(textToCopy);
          }
      });
});


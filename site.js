document.addEventListener('DOMContentLoaded', function () {

  const elementGlyphSearch = document.getElementById('glyphSearch');
  const elementGlyphSearchButton = document.getElementById('glyphSearchButton');
  const elementGlyphSearchAllButton = document.getElementById('glyphSearchAllButton');
  const elementGlyphCheatSheet = document.getElementById('glyphCheatSheet');

  // nice scrolling

  document.getElementsByTagName('nav')[0].addEventListener('click', function (e) {
    if (e.target.matches('a') && e.target.hash) {
      const section = document.getElementById(e.target.hash.slice(1));

      if (section) {
        e.preventDefault();
        scrollIt(section);
      }
    }
  });

  function scrollIt(destination, duration = 200, easing = 'linear', callback) {

    const easings = {
      linear(t) {
        return t;
      },
      easeInQuad(t) {
        return t * t;
      },
      easeOutQuad(t) {
        return t * (2 - t);
      },
      easeInOutQuad(t) {
        return t < 0.5 ? 2 * t * t : -1 + (4 - 2 * t) * t;
      },
      easeInCubic(t) {
        return t * t * t;
      },
      easeOutCubic(t) {
        return (--t) * t * t + 1;
      },
      easeInOutCubic(t) {
        return t < 0.5 ? 4 * t * t * t : (t - 1) * (2 * t - 2) * (2 * t - 2) + 1;
      },
      easeInQuart(t) {
        return t * t * t * t;
      },
      easeOutQuart(t) {
        return 1 - (--t) * t * t * t;
      },
      easeInOutQuart(t) {
        return t < 0.5 ? 8 * t * t * t * t : 1 - 8 * (--t) * t * t * t;
      },
      easeInQuint(t) {
        return t * t * t * t * t;
      },
      easeOutQuint(t) {
        return 1 + (--t) * t * t * t * t;
      },
      easeInOutQuint(t) {
        return t < 0.5 ? 16 * t * t * t * t * t : 1 + 16 * (--t) * t * t * t * t;
      }
    };

    const start = window.pageYOffset;
    const startTime = 'now' in window.performance ? performance.now() : new Date().getTime();

    const documentHeight = Math.max(document.body.scrollHeight, document.body.offsetHeight, document.documentElement.clientHeight, document.documentElement.scrollHeight, document.documentElement.offsetHeight);
    const windowHeight = window.innerHeight || document.documentElement.clientHeight || document.getElementsByTagName('body')[0].clientHeight;
    const destinationOffset = typeof destination === 'number' ? destination : destination.offsetTop;
    const destinationOffsetToScroll = Math.round(documentHeight - destinationOffset < windowHeight ? documentHeight - windowHeight : destinationOffset);

    if ('requestAnimationFrame' in window === false) {
      window.scroll(0, destinationOffsetToScroll);
      if (callback) {
        callback();
      }
      return;
    }

    function scroll() {
      const now = 'now' in window.performance ? performance.now() : new Date().getTime();
      const time = Math.min(1, ((now - startTime) / duration));
      const timeFunction = easings[easing](time);
      window.scroll(0, Math.ceil((timeFunction * (destinationOffsetToScroll - start)) + start));

      if (window.pageYOffset === destinationOffsetToScroll) {
        if (callback) {
          callback();
        }
        return;
      }

      requestAnimationFrame(scroll);
    }

    scroll();
  }

  // search via typing in input (debounced)
  elementGlyphSearch && elementGlyphSearch.addEventListener(
    'keyup',
    debounce(function (e) {
      gtag('event', 'search-via-input', {
        event_category: 'glyph-search',
        event_label: 'Cheat Sheet : ' + (e.target && e.target.value),
        value: e.target && e.target.value
      });
      searchGlyphs();
    }, 500)
  );

  // search via search button
  elementGlyphSearchButton && elementGlyphSearchButton.addEventListener(
    'click',
    () => {
      gtag('event', 'search-via-button', {
        event_category: 'glyph-search',
        event_label: 'Cheat Sheet : ' + (e.target && e.target.value),
        value: e.target && e.target.value
      });
      searchGlyphs();
    }
  )

  // search all via search all button
  elementGlyphSearchAllButton && elementGlyphSearchAllButton.addEventListener(
    'click',
    () => {
      gtag('event', 'search-all-via-button', {
        event_category: 'glyph-search',
        event_label: 'Cheat Sheet : all',
        value: 'all'
      });
      searchAllGlyphs();
    }
  );

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

      var later = function () {
        timeout = null;
        if (!immediate) func.apply(context, args);
      };

      var callNow = immediate && !timeout;

      clearTimeout(timeout);

      timeout = setTimeout(later, wait);

      if (callNow) func.apply(context, args);
    };
  }

  function searchAllGlyphs() {
    elementGlyphSearch.value = '';
    searchGlyphs();
  }

  function searchGlyphs() {
    const filter = elementGlyphSearch.value.toLowerCase();
    const elements = elementGlyphCheatSheet.querySelectorAll('.column');
    const length = elements.length;
    let i = 0;
    let elementClassName, elementCodePoint;
    let anyVisibleColumns = false;

    for (; i < length; i++) {
      elementClassName = elements[i].querySelector('div.class-name');
      elementCodePoint = elements[i].querySelector('div.codepoint');
      if (elementClassName && elementCodePoint) {
        if (
          elementClassName
            .textContent
            .indexOf(filter) > -1 ||
          elementCodePoint
            .textContent
            .indexOf(filter) > -1
        ) {
          elementClassName.parentNode.classList.add('is-visible');
          anyVisibleColumns = true;
        } else {
          elementClassName.parentNode.classList.remove('is-visible');
        }
      }
    }

    if (anyVisibleColumns) {
      elementGlyphCheatSheet.classList.add('has-results');
    }
    else {
      elementGlyphCheatSheet.classList.remove('has-results');
    }
  }

  // extremely basic filtering on load:
  function getParameterByName(name, url) {
    if (!url) {
      url = window.location.href;
    }
    name = name.replace(/[\[\]]/g, '\\$&');
    var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
      results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, ' '));
  }

  const set = getParameterByName('set');
  const onCheatSheet = window.location.href.indexOf('/cheat-sheet') !== -1;

  if (set) {
    if (onCheatSheet) {
      elementGlyphSearch.value = set;
      gtag('event', 'search-via-url', {
        event_category: 'glyph-search',
        event_label: 'Cheat Sheet : ' + set,
        value: set
      });
      searchGlyphs();
    } else {
      gtag('event', 'search-via-redirect', {
        event_category: 'glyph-search',
        event_label: 'Cheat Sheet : ' + set,
        value: set
      });
      // redirect to cheat sheet with param
      window.location.href = window.location.origin + '/cheat-sheet?set=' + set;
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
      return clipboardData.setData('Text', text);
    } else if (document.queryCommandSupported && document.queryCommandSupported('copy')) {
      var textarea = document.createElement('textarea');
      textarea.textContent = text;
      textarea.style.position = 'fixed'; // Prevent scrolling to bottom of page in MS Edge.
      document.body.appendChild(textarea);
      textarea.select();
      try {
        return document.execCommand('copy'); // Security exception may be thrown by some browsers.
      } catch (ex) {
        console.warn('Copy to clipboard failed.', ex);
        return false;
      } finally {
        document.body.removeChild(textarea);
      }
    }
  }

  elementGlyphCheatSheet && elementGlyphCheatSheet.addEventListener(
    'mouseenter',
    function (e) {
      if (e.target.classList.contains('column')) {
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
        copyGlyphNode.title = 'Copy Icon to Clipboard';
        copyClassNode.title = 'Copy Class Name to Clipboard';
        copyCodePoint.title = 'Copy Hex Code Point to Clipboard';
        copyGlyphNode.className = 'copy-glyph';
        copyClassNode.className = 'copy-class';
        copyCodePoint.className = 'copy-hex';
        newNode.appendChild(copyTextNode);
        newNode.appendChild(copyGlyphNode);
        newNode.appendChild(copyClassNode);
        newNode.appendChild(copyCodePoint);
        e.target.children[0].before(newNode);
      }
    },
    true
  );

  elementGlyphCheatSheet && elementGlyphCheatSheet.addEventListener(
    'mouseleave',
    function (e) {
      if (e.target.classList.contains('column')) {
        e.target.querySelector('.glyph-popout-copy-clipboard').remove();
      }
    },
    true
  );

  elementGlyphCheatSheet && elementGlyphCheatSheet.addEventListener('click', function (event) {
    let textToCopy = '';
    let target = event.target;
    let parent = target.parentNode;
    if (parent.className === 'glyph-popout-copy-clipboard') {
      if (target.className === 'copy-class') {
        textToCopy = parent.parentNode.querySelector('.class-name').innerText;
      } else if (target.className === 'copy-hex') {
        textToCopy = parent.parentNode.querySelector('.codepoint').innerText;
      } else if (target.className === 'copy-glyph') {
        textToCopy = window
          .getComputedStyle(document.querySelector(`.${parent.parentNode.querySelector('.class-name').innerText}`), ':before')
          .getPropertyValue('content')
          .replace(/"/g, '');
      }
      gtag('event', event.target.className, {
        event_category: 'clipboard-copy',
        event_label: 'Copy To Clipboard : ' + textToCopy,
        value: textToCopy
      });
      copyToClipboard(textToCopy);
    }
  });

  // lazy load images
  (function lazyLoadImages() {
    const imageObserver = new IntersectionObserver((entries, imgObserver) => {
      entries.forEach(entry => {
        if (entry.isIntersecting) {
          const lazyImage = entry.target;
          lazyImage.src = lazyImage.dataset.src;
        }
      });
    });
    const arr = document.querySelectorAll('img.lzy_img');
    arr.forEach(v => {
      imageObserver.observe(v);
    });
  })();

});
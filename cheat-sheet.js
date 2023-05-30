
document.addEventListener('DOMContentLoaded', function () {
    const elementGlyphSearch = document.getElementById('glyphSearch');
    const elementGlyphCheatSheet = document.getElementById('glyphCheatSheet');
    const maxSearchResults = 250;

    // Storage for not-yet-rendered search results. More results will are rendered when scrolled to the bottom.
    let remainingSearchResults = [];

    // Index all glyphs/icons
    let miniSearch = new MiniSearch({
        fields: ['id', 'code', 'name'], // fields to index for full-text search
        storeFields: ['id', 'code', 'isRemoved'], // fields to return with search results
    })
    miniSearch.addAll(Object.entries(glyphs).map(
        ([key, value]) => {
            return {
                id: key,
                code: value,
                name: key.substring(key.lastIndexOf('-') + 1),
                isRemoved: key.startsWith('nfold'),
            }
        }
    ));

    elementGlyphCheatSheet.onscroll = function () {
        const threshold = 10;
        if ((elementGlyphCheatSheet.offsetHeight + elementGlyphCheatSheet.scrollTop + threshold) >= elementGlyphCheatSheet.scrollHeight) {
            console.log("load more search results");
            loadMoreSearchResults();
        }
    };

    // search via typing in input (debounced)
    elementGlyphSearch && elementGlyphSearch.addEventListener(
        'input',
        debounce(function (e) {
            gtag('event', 'search-via-input', {
                event_category: 'glyph-search',
                event_label: 'Cheat Sheet : ' + (e.target && e.target.value),
                value: e.target && e.target.value
            });
            searchGlyphs();
        }, 500)
    );

    // Credit David Walsh (https://davidwalsh.name/javascript-debounce-function)
    // Returns a function, that, as long as it continues to be invoked, will not
    // be triggered. The function will be called after it stops being called for
    // N milliseconds. If `immediate` is passed, trigger the function on the
    // leading edge, instead of the trailing.
    function debounce(func, wait, immediate) {
        let timeout;

        return function executedFunction() {
            let context = this;
            let args = arguments;

            let later = function () {
                timeout = null;
                if (!immediate) func.apply(context, args);
            };

            let callNow = immediate && !timeout;

            clearTimeout(timeout);

            timeout = setTimeout(later, wait);

            if (callNow) func.apply(context, args);
        };
    }

    function addSearchResultItemToFragment(fragment, iconClassName, codepoint) {
        let parentDiv = document.createElement("div");
        parentDiv.setAttribute("class", "column");

        let index = iconClassName.indexOf('-');
        let namespace = iconClassName.substring(0, index);
        let iconClassNameBeforeDeprecation = iconClassName;

        if (namespace === "nfold") {
            let rest = iconClassName.substring(index + 1);
            iconClassNameBeforeDeprecation = `nf-${rest}`;

            let span1 = document.createElement("span");
            span1.setAttribute("class", "corner-red");
            parentDiv.appendChild(span1);

            let span2 = document.createElement("span");
            span2.setAttribute("class", "corner-text");
            span2.textContent = "removed";
            parentDiv.appendChild(span2);
        }

        let innerDiv1 = document.createElement("div");
        innerDiv1.setAttribute("class", `center ${namespace} ${iconClassName}`);
        parentDiv.appendChild(innerDiv1);

        let innerDiv2 = document.createElement("div");
        innerDiv2.setAttribute("class", "class-name");
        innerDiv2.textContent = iconClassNameBeforeDeprecation;
        parentDiv.appendChild(innerDiv2);

        let innerDiv3 = document.createElement("div");
        innerDiv3.setAttribute("class", "codepoint");
        innerDiv3.setAttribute("title", "Copy Hex Code to Clipboard");
        innerDiv3.textContent = codepoint;
        parentDiv.appendChild(innerDiv3);

        fragment.appendChild(parentDiv);
    }

    function loadMoreSearchResults() {
        let fragment = document.createDocumentFragment();
        remainingSearchResults.slice(0, maxSearchResults).forEach(result => {
            addSearchResultItemToFragment(fragment, result.id, result.code);
        });
        elementGlyphCheatSheet.append(fragment);

        remainingSearchResults = remainingSearchResults.slice(maxSearchResults, -1);
    }

    function searchGlyphs() {
        let searchTerm = elementGlyphSearch.value;

        if (searchTerm === "") {
            // MiniSearch don't allow empty searches, so we search for "nf".
            searchTerm = "nf";
        }

        // TODO: search suggestions

        remainingSearchResults = miniSearch.search(searchTerm,
            {
                prefix: true,
                combineWith: "AND",
                boost: {id: 0.001},
                boostDocument: ((documentId, term, storedFields) => {
                    return storedFields.isRemoved ? 0.001 : 1
                }),
            }
        );

        console.log(`search: ${remainingSearchResults.length} results found`);
        elementGlyphCheatSheet.replaceChildren([]);
        elementGlyphCheatSheet.scrollTop = 0;

        if (remainingSearchResults.length != 0) {
            loadMoreSearchResults();
        } else {
            let notFoundElem = document.createElement("div");
            notFoundElem.setAttribute("style", "padding: 10px;");
            notFoundElem.innerHTML = `<span style="font-size: 30px;">No results found</span>`;
            elementGlyphCheatSheet.appendChild(notFoundElem);
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
                copyCodePoint.innerText = 'UTF';
                copyGlyphNode.title = 'Copy Icon to Clipboard';
                copyClassNode.title = 'Copy Class Name to Clipboard';
                copyCodePoint.title = 'Copy UTF-16 Codes to Clipboard';
                copyGlyphNode.className = 'copy-glyph';
                copyClassNode.className = 'copy-class';
                copyCodePoint.className = 'copy-utf16';
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
            } else if (target.className === 'copy-glyph') {
                textToCopy = window
                    .getComputedStyle(document.querySelector(`.${parent.parentNode.querySelector('.class-name').innerText}`), ':before')
                    .getPropertyValue('content')
                    .replace(/"/g, '');
            } else if (target.className === 'copy-utf16') {
                const glyph = window
                    .getComputedStyle(document.querySelector(`.${parent.parentNode.querySelector('.class-name').innerText}`), ':before')
                    .getPropertyValue('content')
                    .replace(/"/g, '');
                textToCopy = '';
                let i = 0;
                while (i < 10) {
                    let c = glyph.charCodeAt(i++); // js strings are utf16 already :-)
                    if (!(c > 0)) break;
                    if (c <= 0x32) continue;
                    textToCopy += '\\u' + c.toString(16);
                }
            }
        } else if (parent.className.startsWith('column') && target.className === 'codepoint') {
            textToCopy = target.innerText;
        }
        if (textToCopy.length > 0) {
            gtag('event', event.target.className, {
                event_category: 'clipboard-copy',
                event_label: 'Copy To Clipboard : ' + textToCopy,
                value: textToCopy
            });
            copyToClipboard(textToCopy);
        }
    });


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
            let textarea = document.createElement('textarea');
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

    searchGlyphs(); // shows all glyphs at first load
})

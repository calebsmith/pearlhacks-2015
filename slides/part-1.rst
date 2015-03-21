Getting Started with Front-End Web Development
====================================================================

----

View Slides Here
----------------------------------------------------------------

http://bit.ly/pearlhacks2015

----


HTML Reference
---------------------------------------------------------------

https://developer.mozilla.org/en-US/docs/Web/HTML

----

HTML Overview
----------------------------------------------------------------

* Basis of all web pages

* A markup language for documents

* Other technologies *enhance* the page (such as CSS, JavaScript, Flash, AJAX)

----

History
----------------------------------------------------------------

* Originally designed by Tim Berners-Lee at CERN for reading rich text documents on work stations

* Various versions for years, HTML5 is standard ~everywhere for past few years

----

Semantics
----------------------------------------------------------------

* HTML is content

* Content is separate from presentation

* Consists of a pre-defined set of elements

----

HTML Tags
----------------------------------------------------------------

* Tags use angle brackets, such as `<p>`

* Often have a corresponding closing tag, such as `</p>`

* Can be nested within each other

.. sourcecode:: html

    <!DOCTYPE html>
    <html>
        <head>
            <title>Title of the page in the browser window</title>
        </head>
        <body>
            <p>The simplest possible web page</p>
        </body>
    </html>

----

JSFiddle
----------------------------------------------------------------

http://jsfiddle.net/qpqfvdrL/

----

HTML Attributes
----------------------------------------------------------------

* Tags can have attributes.

.. sourcecode:: html

    <a href="www.google.com">A link to google</a>

* The href="" part is an attribute

----

Example Content Tags
----------------------------------------------------------------

.. sourcecode:: html

    <h1>A very large heading</h1>
    <h2>A smaller heading</h2>
    <h3>Smaller heading still</h3>
    <p>A paragraph</p>
    <a href="http://www.twitter.com">A link to twitter</a>
    <img alt="Google" src="http://www.google.com/images/srpr/logo11w.png"/>

----

Nesting Warning
----------------------------------------------------------------

* Tags should be closed appropriately when nesting. E.g:

.. sourcecode:: html

    <!-- Valid -->
    <a href="www.google.com">
        <h1> Nice heading</h1>
    </a>

.. sourcecode:: html

    <!-- Invalid -->
    <a href="www.google.com">
        <h1> Nice heading</a>
    </h1>

----

HTML Entities
----------------------------------------------------------------

* Can't put `<p>` in the middle of your text. It will be used as a tag

* Must use entities

.. sourcecode:: html

    &gt; >
    &lt; <
    &amp; &
    &quot; "

----

Pause
----------------------------------------------------------------

----

Semantic Tags
----------------------------------------------------------------

.. sourcecode:: html

    <div id="content">
        <p>Content <span class="inline-emphasis">here</span></p>
    </div>

* Div - A section or block that goes together

* span - Like a div, but inline

----

Id vs. Class
----------------------------------------------------------------

* id - unique on page, like a user

* class - not unique, like a group

* Used with CSS and JavaScript:

    * Choose **the** element with an id
    * Choose the **elements** with a class

----

CSS
----------------------------------------------------------------

* A declarative language for specifying how a document is presented

* "styling"

----

Reference
----------------------------------------------------------------

https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Getting_started

----

CSS Syntax
----------------------------------------------------------------

* selector

* property

* value

----

CSS Syntax Example
----------------------------------------------------------------

.. sourcecode:: css

    p {
        text-align: left;
    }

* p - selector

* text-align - property

* left - value

----

CSS Semantics
----------------------------------------------------------------

* For content matching this *selector*:

    * Set the *property* to this *value*

.. sourcecode:: css

    p {
        text-align: left;
    }

* For content in a p tag, set the text-alignment to left

----

Id vs. Class
----------------------------------------------------------------

.. sourcecode:: css

    <p class='emphasized' id='desc'>Information</p>

    // All elements with emphasized class will be bold
    .emphasized {
        font-weight: bold;
    }

    // The element with desc id will have a margin
    #desc {
        margin: 4px 2px;
    }

----

CSS Selectors
----------------------------------------------------------------

* Combining tags, class, and id

.. sourcecode:: html

    <p class="emphasized">Content</p>
    <p id="desc">Content</p>

.. sourcecode:: css

    // A p tag with emphasized class
    p.emphasized {
        font-weight: bold;
    }

    // A p tag with desc id
    p#desc {
        margin: 4px 2px;
    }

----

CSS Selector Group
----------------------------------------------------------------

* Combine selectors into comma-separated list

.. sourcecode:: css

    // elements with either class
    .emphasized, .interesting {
        font-size: 10px;
    }

* , - OR

----

CSS Descendant Combinator
----------------------------------------------------------------

* Combine selectors into space-separated list

* A B {... -> B is a descendant of A

.. sourcecode:: css

    // Element with interesting class, inside element with emphasized class
    .emphasized .interesting {
        font-style: italic;
    }

----

CSS Selectors
----------------------------------------------------------------

* Combining tags, class, and id

.. sourcecode:: html

    <p class="emphasized">Content</p>

    <span class="emphasized><p>Content</p></span>

.. sourcecode:: css

    // A p tag with emphasized class
    p.emphasized {
        font-weight: bold;
    }

    // A p tag of an emphasized class element (likely div or span)
    p .emphasized {
        font-weight: bold;
    }

----

Fiddle with Box Model
----------------------------------------------------------------

http://jsfiddle.net/qpqfvdrL/1/

http://www.w3schools.com/css/css_boxmodel.asp

----

Pause
----------------------------------------------------------------

----

Local Setup
----------------------------------------------------------------

* Create a file in a text editor. Save as filename.html

* Go to file:///path/to/filename.html in a browser

----

Chrome Inspector Tools
----------------------------------------------------------------

----

JavaScript
----------------------------------------------------------------

----

Reference
----------------------------------------------------------------

https://developer.mozilla.org/en-US/docs/Web/JavaScript

http://superherojs.com/

https://github.com/airbnb/javascript

----

JavaScript
----------------------------------------------------------------

* Original purpose - animations and effects

* Allows for programming that runs in a browser

* Can now run outside of a browser (Node.js)

----

JavaScript Design
----------------------------------------------------------------

* Somewhat OOP, somewhat FP

* Dynamic and weakly typed

* Syntax is C/Java-like

* Closer to Python/Ruby than C/Java in semantics

----

JavaScript Syntax
----------------------------------------------------------------

.. sourcecode:: javascript

    var add = function(a, b) {
        return a + b;
    }

* {}- block
* ; - statement

----

JavaScript Data
----------------------------------------------------------------

* Numbers, Strings, Booleans, null, undefined

.. sourcecode:: javascript

    var a = 3;
    var b = 3.4;
    var c = 'Oh hai';
    var d = null;
    var e = undefined;

----

Functions
----------------------------------------------------------------

.. sourcecode:: javascript

    function(arg) {
        console.log(arg);
        return arg;
    }

----

Functions
----------------------------------------------------------------

.. sourcecode:: javascript

    // Function declaration
    function func(arg) {
        console.log(arg);
        return arg;
    }

    // Function expression
    var func = function (arg) {
        console.log(arg);
        return arg;
    }

----

Inline Function
----------------------------------------------------------------


.. sourcecode:: javascript

    var sidebar = document.getElementById('sidebar');

    sidebar.onclick = function(event) {
        console.log(event, 'clicked');
    };

----

DOM
----------------------------------------------------------------

* Document Object Model

* HTML + CSS in a tree data structure

* JavaScript queries DOM and updates it

.. sourcecode:: javascript

    var sidebar = document.getElementById('sidebar');

    console.log(sidebar.outerHTML);
    console.log(sidebar.innerHTML);
    sidebar.innerHTML = '<p>New content</p>';
    sidebar.hide();
    sidebar.show();

Dom Overview Reference
----------------------------------------------------------------

http://www.w3schools.com/js/js_htmldom_navigation.asp

.. sourcecode:: javascript

    var sidebar = $('#sidebar');
    sidebar.html('<p>New Content</p>');

----

JQuery
----------------------------------------------------------------

* Library for simpler DOM API

* Ajax, animation, other features added in.

.. sourcecode:: javascript

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

* N.B. CDN

----

Pause
----------------------------------------------------------------

----

JavaScript Animation Example
----------------------------------------------------------------

* Change body to


.. sourcecode:: javascript

    <body>
        <p id="message">JavaScript is Fun</p>
        <button id="bounce">Click here to bounce</button>
        <script>
            $("button#bounce").click(function() {
                $("p#message").slideUp(500).slideDown(500);
            });
        </script>
    </body>

----

JQuery Animation Callbacks
----------------------------------------------------------------

* Change script tag to:

.. sourcecode:: javascript

  $("button#bounce").click(function() {
      $("p#message")
          .slideUp(500)
          .slideDown(500, function() {
              $(this).css('color', 'red');
          });
  });

----


JQuery Animation Callbacks Continued
----------------------------------------------------------------

* Change script tag to:

.. sourcecode:: javascript

  $("button#bounce").click(function() {
      $("p#message")
          .css('color', 'red')
          .slideUp(500)
          .slideDown(500, function() {
              $(this).css('color', 'black');
          });
  });

----

JQuery Animation Future-Proofing
----------------------------------------------------------------


.. sourcecode:: javascript

    $("button#bounce").click(function(){
        var $el = $('p#message'),
            el_orig_color = $el.css('color');
        $el
            .css('color', 'red')
            .slideUp(500)
            .slideDown(500, function(){
                $(this).css('color', el_orig_color);
            });
    });

----

Pause
----------------------------------------------------------------

----

JavaScript Chain Select Example
----------------------------------------------------------------

Saved in a fiddle - http://jsfiddle.net/sz7n3vrj/

* Be sure jQuery is loaded

.. sourcecode:: html

    // HTML body
    <form>
      <label>Make:</label>
      <select name="make">
          <option value="ford">Ford</option>
          <option value="chev">Chevrolet</option>
          <option value="toyo">Toyota</option>
          <option value="volk">Volkswagen</option>
      </select>
      <br/>
      <label>Model:</label>
      <select name="model">
          <option value="NA">--Please choose a Make--</option>
      </select>
      <input type="submit" value="Submit">
    </form>

----

JavaScript Chain Select Continued
----------------------------------------------------------------

.. sourcecode:: javascript

    // JavaScript
    var make_model_lookup = {
      'ford': [
          ['taur', 'Taurus'],
          ['esco', 'Escort']
      ],
      'chev': [
          ['cava', 'Cavalier'],
          ['volt', 'Volt']
      ],
      'toyo': [
          ['camr', 'Camry'],
          ['coro', 'Corolla']
      ],
      'volk': [
          ['jett', 'Jetta'],
          ['golf', 'Golf']
      ]
    };

----

More JS
-------------------------------------------------------------

.. sourcecode:: javascript

    $('select[name=make]').change(function() {
      var $select_model = $('select[name=model]'),
          make_value = this.value,
          model_options_list = make_model_lookup[make_value];
      $select_model.find('option').remove();
      for(var i = 0; i < model_options_list.length; i++) {
          var model_value = model_options_list[i][0],
              model_display_value = model_options_list[i][1];
          var model_option =
              '<option value="' + model_value + '">' +
              model_display_value + '</option>';
          $select_model.append(model_option);
      }
    });

----

JavaScript Chain Select
----------------------------------------------------------------

* select "Make" - On change event, sets options for model select

* .change() - Takes a function as an argument.

* hardcoded lookup table - Might be AJAX in context

* N.B. select options for "make" must line up with lookup table

----

Pause
----------------------------------------------------------------

----


JavaScript Warts
----------------------------------------------------------------

----

JavaScript Variables
----------------------------------------------------------------

* global by default - use var


.. sourcecode:: javascript

    x = 3
    // ...
    var weird_add = function(a, b) {
        x = a + 1;
        y = b + 1;
        return x + y - 2;
    }
    console.log(weird_add(10, 20));
    console.log(x);


.. sourcecode:: javascript

    var x = 3
    // ...
    var weird_add = function(a, b) {
        var x = a + 1;
        var y = b + 1;
        return x + y - 2;
    }
    console.log(weird_add(10, 20));
    console.log(x);

----

JavaScript Weak Types
----------------------------------------------------------------

.. sourcecode:: javascript

    "37" - 7 // 30
    "37" + 7 // "377"

----

JavaScript Equality
----------------------------------------------------------------

https://www.bram.us/2015/01/18/equality-in-javascript/

----

JavaScript this
----------------------------------------------------------------

* **this** can be window

.. sourcecode:: javascript

      $("button#bounce").click(function() {
          $("p#message")
              .slideUp(500)
              .slideDown(500, function() {
                  // Here, this is the current element
                  $(this).css('color', 'red');
              });
      });

    // Here, this is the window
    this === window; // true
    this.document === document; // true

* unless using "use string";

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/this

----

JavaScript 'use strict'
----------------------------------------------------------------

* Add the following

.. sourcecode:: javascript

    // top of file
    'use strict';

    // OR

    function func(arg) {
        'use strict';
        // ... function body
        return x
    }

----

Browsers Are Weird
---------------------------------------------------------------

JavaScript and the DOM are often quirky

* There are many browsers

* Not every browser plays by the rules

1. Start with Chrome or Firefox

2. If you started with Chrome, make it work for FF or vice-versa

3. Troubleshoot where your pages don't work in IE, safari or on mobile

----

Questions?
-----------------------------------------------------------------

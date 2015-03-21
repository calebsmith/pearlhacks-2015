Getting Started with Front-End Web Development
====================================================================

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
    <a href="astrocodeschool.com">A link to the Astro Code School website</a>
    TODO
    <img alt="Google logo" src="">

.. sourcecode:: html

    <h1>A very large heading</h1>
    <h2>A smaller heading</h1>
    <h3>Smaller heading still</h1>
    <p>A paragraph</p>
    <a href="astrocodeschool.com">A link to the Astro Code School website</a>
    TODO
    <img alt="Google" src="">

----

Nesting Warning
----------------------------------------------------------------

* Tags should be closed appropriately when nesting. E.g:

.. sourcecode:: html

    <!-- Valid -->
    <a href="www.google.com"><h1> Nice heading</h1></a>

.. sourcecode:: html

    <!-- Invalid -->
    <a href="www.google.com"><h1> Nice heading</a></h1>

----

HTML Entities
----------------------------------------------------------------

* Can't put `<p>` in the middle of HTML

* Must use entities

.. sourcecode:: html

    &gt; >
    &lt; <
    &amp; &
    &quot; "

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

Pause
----------------------------------------------------------------

----

HTTP
----------------------------------------------------------------

----

#"Web"
----------------------------------------------------------------

* Protocol for "the web"

* Client makes an HTTP request

* Server returns an HTTP response

* all plain-text

----

Web Browser
----------------------------------------------------------------

* The web browser makes a request to a URL

* A DNS server resolves the URL to an IP address

* The HTTP request is routed to the server at that address

* Usually ports 80 or 8080

* Server responds

----

HTTP Requests
----------------------------------------------------------------

Mostly a "verb", and a URL

* HEAD - I need some basic info

* GET - Give me data

* POST - Here is some data.

* PUT - Create this resource

* DELETE - Delete this resource

Also headers - options and meta data

----

HTTP Request Reference
----------------------------------------------------------------

http://en.wikipedia.org/wiki/List_of_HTTP_header_fields#Request_fields

----

Curl Example
----------------------------------------------------------------

.. sourcecode:: shell

    #Contain response code and header information
    curl -i www.google.com

    #verbose flag
    curl -v www.google.com

----

HTTP Responses
----------------------------------------------------------------

Response codes:

* 3XX - Look over here instead

* 4XX - You messed up

* 5XX - I messed up

* 2XX - We're all good

("I" is server, "You" is client)

----

HTTP Response Codes
----------------------------------------------------------------

* 200 - OK

* 301 - Permanent redirect

* 302 - Redirect

* 404 - Nothing here

* 403 - Forbidden

* 500 - Server Error

----

Pause
----------------------------------------------------------------

Local HTTP
----------------------------------------------------------------

* Can use file:///path/to/file.html locally

* Mostly works.

* Can run into "same origin policy"

.. sourcecode:: shell

    # On Linux or Mac
    python -m SimpleHTTPServer

* Defaults to port 8000. Connect to localhost:8000

----

Local Python Server
----------------------------------------------------------------

* The SimpleHTTPServer - all we need for now

* Django and other frameworks provide a similar server for development

* None of these are used in production

CSS
----------------------------------------------------------------

----

Reference
----------------------------------------------------------------

[MDN - CSS - Getting Started](https://developer.mozilla.org/en-US/docs/Web/Guide/CSS/Getting_started)

----

CSS
----------------------------------------------------------------

* A declarative language for specifying how a document is presented

* "styling"

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

CSS Child Combinator
----------------------------------------------------------------

* Combine selectors with > separator

* A > B {... -> B is a *child* of A

.. sourcecode:: css

    // Element with interesting class, child of element with emphasized class
    .emphasized > .interesting {
        font-style: italic;
    }

Pause
----------------------------------------------------------------

----

JSFiddle
----------------------------------------------------------------

[JSFiddle with HTML/CSS](http://jsfiddle.net/qpqfvdrL/)

----

Fiddle with Box Model
----------------------------------------------------------------

[JSFiddle with Box Model](http://jsfiddle.net/qpqfvdrL/1/)

[W3C Box Model Reference](http://www.w3schools.com/css/css_boxmodel.asp)

----

Local setup
----------------------------------------------------------------

1. Create an html file somewhere with

.. sourcecode:: html

    <!doctype HTML>
    <html>
      <head>
          <meta charset="UTF-8">
          <title>Title</title>
          <link rel="stylesheet" href="style.css">
      </head>

      ... paste here

    </html>

1. Paste content from the JSFiddle in the "paste here" area

1. Create style.css file, paste the CSS section of the fiddle there

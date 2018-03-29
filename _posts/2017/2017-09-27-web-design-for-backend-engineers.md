---
title: Scalability Questions
permalink: scalability-questions
published: false
---

**Responsive UI**

```html
<meta name=""viewport" content="width=device-width"/>
```

**Header Spacing** You want some space in header

```html
<header> <!-- we are in body -->
  <div class="container"> <!-- container - good - so its spacing -->
     <div id="branding">
        <h1>Acme web design</h1> 
    </div>
    <nav>
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="services.html">Services</a></li>
      </ul>
    </nav>
  </div>
</header>
```

The above will look disqusting because we did't add any css.

**Showcase area** outside the header but still in body

```html
<section id="showcase">
  <div class="container">
    <h1>Affordable Professional web design</h1>
    <p></p>
  </div>
</section>
```

**Newsletter**

Same you have `section id="newsletter` `div container...` html

```html
<section id="newsletter">
  <div class="container">
  <h1>Subscribe</h1>
  <form>
  <input type="email" placeholder="enter email"/>
  <button type="submit" class="button_1">Subscribe</button>
</form>
</div>
</section>
```

**style.css**

we start with body

```css
body {
  font-family: Arial, Helvetica, sans-serif;
  font-size:15px;
  line-height: 1.5;
  font: 15px/1.5 Arial, Helvetica, sans-serif; or instead of above
  padding: 0; // we don't want padding in border.
  background-color: #f4f4f4 ; light grey background
  
}

.container {
  width: 80%; /* so its responsive */
  margin:auto; /* so everything is in middle. */
  overflow: hidden; /* so no scrollbacr if not enough space just hidden. */
}

.header {
  background: #35424a; /* kind of blue greyish */
  color: #ffffff; /* background is grey so we want whte text */
  padding-top: 30px;
  min-height: 70px; /* min and not height so its responsive */
  border-bottom: #e8491d 3px solid; /* orange color width, solid*/
  
}

header a {
  color: #ffffff; /* white */
  text-decoration: none; /* remove underline on links */
  text-transform: uppercase; /* we want it uppercase */
  font-size: 16px; /* so home about services is higher fonts */
}

header ul { /* header links are horizontal */
  margin: 0px;
  margin: 0; /* we don't want padding */
  padding: 0;
}

header li {
  float: left;
  display: inline;
  padding: 0 20px 0 20px; /* top right bottom left */
}

/* now move the menu of headers to the right */

header #branding {
  float: left; /* the title is to the left. */
  
}

header #branding h1 {
  margin: 0;
}

header nav {
  float: right;
  margin-top: 10px; /* move little bit to down we dont want the <ul> to have any padding */
}

```



**Resources**

* youtube: "Build An HTML5 Website With A Responsive Layout"
* <meta name="viewport" content="width=device-width"/> so it's responsive
* We need a container class so that items would have some spae so in header
* <header><div class="container">

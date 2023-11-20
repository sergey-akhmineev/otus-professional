<!DOCTYPE html>
<html class="h-full" lang="en">
  <head>
    <title>HTML First</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="Principles to make building web software easier, faster and more inclusive.">

<meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="739n5jt2GZf9gxj8ZAE5lr3uKQasLUy2Ad2kKzaKoFoEsP6zIPu+P4bD9WbznQF3MkNUYzTQB26LAJGKrLRrww==" />


<!-- By default, we load in a (reasonably large) static tailwind file 👇 -->
<link rel="stylesheet" href="/stylesheets/tailwind-full.css" >
<!-- if you'd like to improve page speed, you can comment out the static tailwind file above
    and use the much smaller file below. If you do this, you'll also need to run
    `npx tailwindcss -o ./public/stylesheets/tailwind-trimmed.css` to ensure it's up to date.
-->
<!-- link rel="stylesheet" href="/stylesheets/tailwind-trimmed.css?stamp=2023-11-12T23:46:24+01:00" -->
<link rel="stylesheet" href="/stylesheets/variables.css?stamp=2023-11-12T23:46:24+01:00">
<link rel="stylesheet" href="/stylesheets/tonic23.css?stamp=2023-11-12T23:46:24+01:00">
<link rel="stylesheet" href="/stylesheets/choices.min.css?stamp=2023-11-12T23:46:24+01:00">

<script src="/js/pusher.min-7.0.js" defer></script>
<script src="/js/htmx-1.8.0.js" defer></script>
<script src="/js/hyperscript.min-0.9.7.js" defer></script>
<script src="/js/popper-2.11.8.js" defer></script>
<script src="/js/tippy-6.3.7.js" defer></script>
<script src="/js/choices.js" defer></script>
<script src="/js/custom.js?stamp=2023-11-12T23:46:24+01:00" defer></script>
<script src="https://www.unpkg.com/tonic-minijs@1.0.1-canary.2387020.0/dist/minijs.umd.js"></script>

  

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link rel="preload" href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;600;900&display=swap" as="style" onload="this.onload=null;this.rel='stylesheet'">

  <noscript>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;600;900&display=swap">
  </noscript>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/styles/tomorrow-night-blue.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/10.7.2/highlight.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.8.0/languages/erb.min.js"></script>
  

<style type="text/css">

  h2 code {
    font-size: 2rem !important;
    font-family: "Outfit", sans-serif !important;
    background-color: yellow;
  }

</style>

<link rel="apple-touch-icon" sizes="180x180" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/site.webmanifest">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">
<script async src="https://umami.toniclabshq.com/script.js" data-website-id="e0b4c39b-a89d-4f84-9465-096169b6295c"></script>
    <meta property="og:image" content="https://image.thum.io/get/width/1200/crop/630/https://html-first.com/og-image?t=1" />
    <meta name="twitter:card" content="summary_large_image">
    <meta name="twitter:site" content="@tonyennis">
    <meta name="twitter:title" content="HTML First">
    <meta name="twitter:image" content="https://image.thum.io/get/width/1200/crop/630/https://html-first.com/og-image?t=1">


  </head>
  <body class="relative h-full" style="background:linear-gradient(180deg,#d5e7f7 0%,#ffffff 20%);background-repeat: repeat-x; background-position:top; background-attachment:fixed">
    <script>
  showingModal = false
</script>
<div class="toasts-container p-5 fixed top-0 z-20">
</div>

<div id="main-modal" :class="showingModal ? 'block' : 'hidden' " class="hidden bg-gray-700 bg-opacity-50 fixed top-0 bottom-0 right-0 left-0 flex justify-center items-center z-30">
  <div id="main-modal-inner" class="relative m-auto max-w-3xl bg-white rounded flex-grow">
    <div style="left:-40px" class="cursor-pointer absolute" _= "on click add .hidden to #main-modal">
      <svg><!-- SVG file not found: 'heroicons/icon-x.svg' --></svg>
    </div>
    <div id="main-modal-content">
    </div>
  </div>
</div>

<div id="right-sidebar" class="hidden bg-gray-700 bg-opacity-50 fixed top-0 bottom-0 right-0 left-0 flex justify-center items-center z-20" >
  <div id="right-sidebar-inner" class="shadow bg-white fixed right-0 bottom-0 top-0 flex z-20" style="width:500px">
    <div style="left:-40px" class="cursor-pointer absolute" _= "on click add .hidden to #right-sidebar">
      <svg><!-- SVG file not found: 'heroicons/icon-x.svg' --></svg>
    </div>
    <div id="right-sidebar-content">
    </div>
  </div>
</div>

   
    <div class="m-auto rounded w-full p-10" style="max-width:800px">
      <div class="grid grid-cols-1 md:grid-cols-3 md:space-x-5">
        <div class="col-span-1 md:col-span-3 order-1 md:order-2">
          <div id="main-content" class="h-full">
            

<div class="format-text">
  <h1>HTML First</h1>

<p>HTML First is a set of principles that aims to make building web software <strong>easier</strong>, <strong>faster</strong>, more <strong>inclusive</strong>, and more <strong>maintainable</strong> by...</p>

<ol>
<li>Leveraging the default capabilities of modern web browsers.</li>
<li>Leveraging the extreme simplicity of HTML&#39;s attribute syntax.</li>
<li>Leveraging the web&#39;s ViewSource affordance.</li>
</ol>

<h1>Goals</h1>

<p>The main goal of HTML First is to <strong>substantially widen the pool of people who can work on web software codebases</strong>. This is good from an individual perspective because it allows a greater number of people to become web programmers, to build great web software, and increase their income. It&#39;s also good from a business perspective as it decreases the cost of building software, and decreases the amount of resources required to hire - a notoriously resource intensive process. </p>

<p>A second goal of HTML First is to make it more <ins>enjoyable</ins> and <ins>seamless</ins> to build web software. Most web programmers are familiar with the excitement of seeing their product come together rapidly as they transition smoothly between the text editor and the browser, with very few unexpected potholes or context switches. But today it takes several years of mastering tools and frameworks to get to that stage. HTML First principles should allow people to unlock that feeling, and level of mastery, much earlier on in their coding journey.</p>

<p>The way we achieve these goals is by acknowledging that <a href="https://new.tonyennis.com/blog/M3WoiPA5P-comparing-the-readability-and-learning-curve-of-html" target="_blank">HTML is very easy to understand</a>, and thus using HTML as the bedrock of our product - not only to define content and structure, but also to set styling and behaviours.</p>

<h1>Principles</h1>

<ul>
<li><a class="anchor-link" href="#vanilla-approaches">Prefer Vanilla approaches</a></li>
<li><a class="anchor-link" href="#attributes-for-styling-behaviour">Use HTML attributes for styling and behaviour</a></li>
<li><a class="anchor-link" href="#attributes-for-libraries">Use libraries that leverage HTML attributes</a></li>
<li><a class="anchor-link" href="#build-steps">Avoid Build Steps</a></li>
<li><a class="anchor-link" href="#naked-html">Prefer Naked HTML</a></li>
<li><a class="anchor-link" href="#view-source">Be View-Source Friendly</a></li>
</ul>

<div id="vanilla-approaches"></div>

<h2><strong>Use &quot;vanilla&quot; approaches to achieve desired functionality over external frameworks</strong></h2>

<p>The range of things that browsers support out of the box is large, and growing. Before adding a library or framework to your codebase, check whether you can achieve it using plain old html/css.<br>
<strong>Encouraged</strong></p>

<pre><code class="html">&lt;details&gt;
  &lt;summary&gt;Click to toggle content&lt;/summary&gt;
  &lt;p&gt;This is the full content that is revealed when a user clicks on the summary&lt;/p&gt;
&lt;/details&gt;    
</code></pre>

<p><strong>Discouraged</strong></p>

<pre><code class="javascript">import React, { useState } from &#39;react&#39;;

const DetailsComponent = () =&gt; {
  const [isContentVisible, setContentVisible] = useState(false);

  const toggleContent = () =&gt; {
    setContentVisible(!isContentVisible);
  };

  return (
    &lt;details&gt;
      &lt;summary onClick={toggleContent}&gt;Click to toggle content&lt;/summary&gt;
      {isContentVisible &amp;&amp; &lt;p&gt;This is the full content that is revealed when a user clicks on the summary&lt;/p&gt;}
    &lt;/details&gt;
  );
};

export default DetailsComponent;
</code></pre>

<div id="attributes-for-styling-behaviour"></div>

<h2>Where possible, default to defining style and behaviour with inline HTML attributes</h2>

<p>For styling this can be enabled with an SPC library like <a href="https://github.com/tonyennis145/dumb-tailwind" target="_blank">Tailwind</a> or <a href="http://tachyons.io/" target="_blank">Tachyons</a>. For behaviour, you can use libraries like <a href="https://hyperscript.org/" target="_blank">hyperscript</a>, <a href="https://alpinejs.dev/" target="_blank">Alpine</a>, or similar. Yes, this does mean your HTML will <em>look</em> busy. But it also means it will be easier for other developers to find and understand behaviour, navigate it, and make changes to it.</p>

<p><strong>Encouraged</strong></p>

<pre><code class="html">&lt;button onclick=&quot;this.classList.add(&#39;bg-green&#39;)&quot;&gt;
  Click Me
&lt;/button&gt;
</code></pre>

<p><strong>Discouraged</strong></p>

<pre><code class="html">&lt;div id=&quot;results-pane&quot;&gt;
  Click Me
&lt;/div&gt;
</code></pre>

<pre><code class="css">#results-pane.active {
  background-color: green;
}
</code></pre>

<pre><code class="javascript">var resultsPane = document.getElementById(&quot;myDiv&quot;);
resultsPane.addEventListener(&quot;click&quot;, function() {
    this.classList.add(&quot;active&quot;);
});
</code></pre>

<p>You may notice that this approach seems to violate <a href="https://en.wikipedia.org/wiki/Separation_of_concerns" target="_blank">Separation of Concerns</a> - one of the most commonly-touted software design principles. We believe an all-or-nothing approach to SoC is flawed, and instead advocate an approach that accounts for Locality of Behaviour and acknoweldges the trade-offs between the two.   </p>

<ul>
<li><a href="https://htmx.org/essays/locality-of-behaviour/" target="_blank">HTMX on The Locality of Behaviour Principle</a></li>
<li><a href="https://adamwathan.me/css-utility-classes-and-separation-of-concerns/" target="_blank">Adam Wathan on separation of styling concerns</a>.</li>
</ul>

<div id="attributes-for-libraries"></div>

<h2><strong>Where libraries are necessary, use libraries that leverage html attributes over libraries built around javascript or custom syntax</strong></h2>

<p><strong>Encouraged</strong></p>

<pre><code class="html">&lt;script src=&quot;https://unpkg.com/<a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="177f6e6772656474657e6763572739273920">[email&#160;protected]</a>/dist/hyperscript.min.js&quot;&gt;&lt;/script&gt;
&lt;div&gt;
  &lt;input type=&quot;text&quot; _=&quot;on input put me into #output&quot;&gt;
  &lt;div id=&quot;output&quot;&gt;&lt;/div&gt;
&lt;/div&gt;
</code></pre>

<p><strong>Discouraged</strong></p>

<pre><code class="html">
&lt;script src=&quot;https://cdn.jsdelivr.net/npm/<a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="dfacabb6b2aab3aaac9fedf1eff1ef">[email&#160;protected]</a>/dist/stimulus.umd.js&quot;&gt;&lt;/script&gt;

&lt;div data-controller=&quot;echo&quot;&gt;
  &lt;input type=&quot;text&quot; data-echo-target=&quot;source&quot; data-action=&quot;input-&gt;echo#update&quot;&gt;
  &lt;div data-echo-target=&quot;output&quot;&gt;&lt;/div&gt;
&lt;/div&gt;

&lt;script&gt;
  const application = Stimulus.Application.start();

  application.register(&quot;echo&quot;, class extends Stimulus.Controller {
      static targets = [&quot;source&quot;, &quot;output&quot;]

      update() {
          this.outputTarget.textContent = this.sourceTarget.value;
      }
  });
&lt;/script&gt;
</code></pre>

<div id="build-steps"></div>
      

<h2>Steer Clear of Build Steps</h2>

<p>Libraries that require transforming your files from one format to another add significant maintenance overhead, remove or heavily impair the ViewSource affordance , and usually dictate that developers learn new tooling in order to use them. <a href="https://stackoverflow.com/questions/36517829/what-does-multiplexing-mean-in-http-2/36519379#36519379" target="_blank">Modern browsers don&#39;t have the same performance constraints</a> that they did when these practices were introduced. And if we use HTML First libraries like static tailwind or htmx, the amount of additional CSS and JS needed is usually minimal.</p>

<p><strong>Encouraged</strong></p>

<pre><code class="html">&lt;link rel=&quot;stylesheet&quot; href=&quot;/styles.css&quot;&gt;
</code></pre>

<p><strong>Discouraged</strong></p>

<pre><code class="html">&lt;link href=&quot;/dist/output.css&quot; rel=&quot;stylesheet&quot;&gt;
</code></pre>

<pre><code class="shell">npx css-compile -i ./src/input.css -o ./dist/output.css --watch
</code></pre>

<p>Aside: The build step practice is so deeply ingrained that even one year ago this opinion was considered <a href="https://twitter.com/tonyennis/status/1579610085499998208" target="_blank">extremely fringe</a>. But in the last year has begun to gain significant steam. Some recent examples:</p>

<ul>
<li><a href="https://twitter.com/dhh/status/1719041666412347651" target="_blank">@dhh - &quot;We&#39;ve gone #NoBuild on CSS with 37signals&quot;</a></li>
<li><a href="https://gomakethings.com/are-build-tools-an-anti-pattern/" target="_blank">Are build tools an anti-pattern by Chris Ferdinandi</a></li>
<li><a href="https://gomakethings.com/how-do-build-tools-break-backwards-compatibility/" target="_blank">How do build tools break backwards compatibility</a></li>
<li><a href="https://social.lol/@bw/111293266036805485" target="_blank">Blake Watson - &quot;There has never been a better time to ditch build steps&quot;</a></li>
</ul>

<div id="naked-html"></div>

<h2>Prefer &quot;naked&quot; HTML to obfuscation layers that compile down to HTML</h2>

<p>This principle is most applicable to backend implementation. The underlying idea again here is readability. If a developer who has familiarity with HTML but not with your backend framework looks through your view files, they should still be able to understand 90%+ of what they see. As with above, this means sacrificing brevity for understandability. </p>

<p><strong>Encouraged</strong></p>

<pre><code class="html">&lt;form action=&quot;&lt;%= new_signup_path %&gt;&quot; method=&quot;post&quot;&gt;
  &lt;div class=&quot;field&quot;&gt;
    &lt;label for=&quot;first_name&quot;&gt;First Name&lt;/label&gt;
    &lt;input id=&quot;first_name&quot; type=&quot;text&quot; value=&quot;&lt;%= @signup&amp;.first_name %&gt;&quot; /&gt;
  &lt;/div&gt;
  &lt;div class=&quot;field&quot;&gt;
    &lt;label for=&quot;last_name&quot;&gt;Last Name&lt;/label&gt;
    &lt;input id=&quot;last_name&quot; type=&quot;text&quot; value=&quot;&lt;%= @signup&amp;.last_name %&gt;&quot; /&gt;
  &lt;/div&gt;
  &lt;div class=&quot;field&quot;&gt;
    &lt;label for=&quot;email&quot;&gt;Last Name&lt;/label&gt;
    &lt;input id=&quot;email&quot; type=&quot;text&quot; value=&quot;&lt;%= @signup&amp;.email %&gt;&quot; /&gt;
  &lt;/div&gt;
&lt;/form&gt;
</code></pre>

<p><strong>Discouraged</strong></p>

<pre><code class="erb">&lt;%= form_with url: &quot;#&quot;, local: true do |form| %&gt;
  &lt;div class=&quot;field&quot;&gt;
    &lt;%= form.label :first_name %&gt;
    &lt;%= form.text_field :first_name %&gt;
  &lt;/div&gt;

  &lt;div class=&quot;field&quot;&gt;
    &lt;%= form.label :last_name %&gt;
    &lt;%= form.text_field :last_name %&gt;
  &lt;/div&gt;

  &lt;div class=&quot;field&quot;&gt;
    &lt;%= form.label :email %&gt;
    &lt;%= form.email_field :email %&gt;
  &lt;/div&gt;

  &lt;div class=&quot;actions&quot;&gt;
    &lt;%= form.submit %&gt;
  &lt;/div&gt;
&lt;% end %&gt;
</code></pre>

<div id="view-source"></div>

<h2>Where possible, maintain the right-click-view-source affordance</h2>

<p>The beauty of the early web was that it was always possible to &quot;peek behind the curtains&quot; and see the code that was responsible for any part of any web page. This was a gift to aspiring developers, as it allowed us to bridge the gap between the theoretical (reading about how code works) and the practical - seeing both code and interface alongside each other. For many sites, we could copy and paste the html or css and run it in ourselves to get a close-to-identical replica. &quot;Remixing&quot; existing snippets was not only a way to learn, but often formed the basis of our new creations.</p>

<p>In the time since, the industry has adopted several &quot;improvements&quot; which have made this practice much rarer. For example, if we use React - the most popular frontend framework, we cannot hit &quot;View Source&quot;, copy the code, and remix it, because 1. React has a build step, meaning the code we see in the developer tools is different to the code that the developer wrote, and 2. React code snippets must be wrapped in a react application in order for them to work.</p>

<p>For sites that follow HTML First principles, we regain the ViewSource affordance again. In fact, HTML First sites often go one step further. Because if you define your <strong>UI interactions</strong> using HTML attributes, you can now also preserve these interactions when copy pasting into a new codebase, (provided your destination file includes the same js library). At some point we intend to levearge this to build an HTML First code snippet library. </p>

<ul>
<li><a href="https://htmx.org/essays/right-click-view-source/" target="_blank">HTMX.org on the ViewSource affordance</a></li>
</ul>

<h2>Wrapping Up</h2>

<p>The practices and principles described on this site are still considered niche in the industry as a whole, and the community of people using them small. One of my hopes with creating this site is to act as a Honeypot to find and connect like minded people with whom we can discuss and sharpen these ideas. If any of this resonates with you, I&#39;d love to <a href="https://twitter.com/tonyennis" target="_blank">hear from you</a>.</p>

</div>

<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>
  // Define the oninit method as a no-op function to avoid conflicts
  HTMLInputElement.prototype.oninit = function() {};

  // Call oninit method for each input element directly using the onload event
  document.addEventListener("DOMContentLoaded", function() {
    var inputElements = document.getElementsByTagName("input");
    for (var i = 0; i < inputElements.length; i++) {
      if (inputElements[i].hasAttribute("oninit")) {
        eval(inputElements[i].getAttribute("oninit"));
      }
    }
  });
</script>
          </div>
        </div>
      </div>
    </div>
    <script>
      document.addEventListener('DOMContentLoaded', (event) => {
        document.querySelectorAll('pre code').forEach((block) => {
          hljs.highlightBlock(block);
          });
          // Whenever someone clicks on a .anchor-link link, get the href and scroll them to that div id
          document.querySelectorAll('.anchor-link').forEach((link) => {
          link.addEventListener('click', (event) => {
          event.preventDefault();
          const href = link.getAttribute('href');
          const id = href.replace('#', '');
          const element = document.getElementById(id);
          element.scrollIntoView({behavior: "smooth", block: "start", inline: "nearest"});
          });
        });
      });
    </script>
  </body>
</html>

Modifications
------------

### Escaped Parameters*

*\*this is a hack*

    ${ ... }$

Allows parameters that will not be parsed by lessc. Can be used to allow -webkit & -moz parameters and/or retain comments in outputted css. Can only be used within a selector.

    .commit_search tr.light {
       ${ background: -webkit-gradient(
    	    linear,
    	    15 28,
    	    15 -15,
    	    color-stop(1, rgb(240,240,239)),
    	    color-stop(1, rgb(248,247,248))
    	);
    	background: -moz-linear-gradient(
    	    center 28,
    	    rgb(240,240,239) 100%,
    	    rgb(248,247,248) 100%
    	); }$
        
        height: 2.5em;
         border-bottom: 1px solid #e1e1e1;
    }



### Directory Watching

Added a directory watch command. Changes to, or addition of, .less files in the watched directory will be compiled automagically.

In terminal:

    lessc -d

or by specifying a directory:

	lessc -d web/css
	
	
![](http://emberapp.com/rc1/images/terminal/sizes/m.png)


Tested on Mac & Linux
gem binary also available from  <http://www.rosscairns.com/dwnld/less/>

-----------------

**Note: From now on, most of the new development on LESS will be happening in <http://github.com/cloudhead/less.js>**

LESS
====
It's time CSS was done right – LESS is _leaner_ css.


Explained
---------
LESS allows you to write CSS the way (I think) it was meant to, that is: with *variables*, *nested rules* and *mixins*!

### Here's some example LESS code:
	
	@dark: #110011;
	.outline (@width: 1) { border: (@width * 10px) solid black }
	
	.article {
		a { text-decoration: none }
		p { color: @dark }
		.outline(3);
	}
	
### And the CSS output it produces:
	
	.article a { text-decoration: none }
	.article p { color: #110011 }
	.article { border: 30px solid black }
	
If you have CSS nightmares, just
	$ lessc style.less

For more information, see you at <http://lesscss.org>

People without whom this wouldn't have happened a.k.a *Credits*
---------------------------------------------------------------

- **Dmitry Fadeyev**, for pushing me to do this, and designing our awesome website
- **August Lilleaas**, for initiating the work on the treetop grammar, as well as writing the rails plugin
- **Nathan Sobo**, for creating treetop
- **Jason Garber**, for his magical performance optimizations on treetop
- And finally, the people of #ruby-lang for answering all my ruby questions. **apeiros**, **manveru** and **rue** come to mind

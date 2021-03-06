---
title: External Links
---

<%= @item[:title] %>
====================
Numerical analysis and scientific computing are my primary research interests;
accordingly, they occupy the majority of this page.

Individual Pages
----------------
Dr. Burkhardt has an extensive collection of [quadrature
points](http://people.sc.fsu.edu/~jburkardt/datasets/quadrature_rules_tri/quadrature_rules_tri.html)
as well as some [numerical
programs](http://people.sc.fsu.edu/~jburkardt/m_src/dunavant/dunavant.html).


The majority of my own work (including this webpage) is on my
[Github](http://www.github.com/electricaltape) page.

Mathematical Projects
---------------------
[SciPy](http://www.scipy.org/), a nice library for doing numerical
computations with Python.

[SAGE](http://www.sagemath.org/), a mathematics suite containing everything
from groups to GMRES with a convenient Python interface.

[Maxima](http://maxima.sourceforge.net/), another free (and lispy!) computer
algebra system, focused more on field arithmetic.

Other Important Software
------------------------
[GNU Emacs](http://www.gnu.org/emacs), the extensible, customizable
<del>text editor</del> operating system.

[Haskell](http://www.haskell.org), a fun programming language.

[nanoc3](http://nanoc.stoneship.org/), the excellent Ruby tool I used to build
this website. For example, the links on the left were generated by this snippet:

    #!ruby
    def create_inner_links
      # select the pages with titles, create links, join them.
      '<br>' + @items.select { |i| not i[:title].nil? }
      .map { |i| link_to(i[:title], i.identifier) }.join(' <br>')
    end
# Markdown CV 
Using pandoc it is easy to get your simple and yet elegand markdown CV to several other formats.
This includes web html formats using some cascading style sheet (CSS).

I took part of the stuff from [this github](https://github.com/chmduquesne/resume). Thank you.

You need installed:
* [pandoc](https://pandoc.org/installing.html)
* And [wkhtmltopdf](https://computingforgeeks.com/install-wkhtmltopdf-on-ubuntu-debian-linux/)

Take my CV and modify to your needs. Pandoc uses markdown extended syntax. This is how to
convert to html:
```
pandoc --standalone -c style.css --from markdown --to html -o index.html index.md
```

And to pdf (I don't like the pandoc convertion from html to pdf using latex).

```
wkhtmltopdf --user-style-sheet index.css index.html index.pdf
```

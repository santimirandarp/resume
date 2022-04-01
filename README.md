# Markdown CV 
Using pandoc it is easy to get your simple and yet elegant markdown CV to several other formats.
This includes web html formats using some cascading style sheet, or a superset (SASS).

I took part of the stuff from [this github](https://github.com/chmduquesne/resume). Thank you.

You need installed:
* [pandoc](https://pandoc.org/installing.html)
* [wkhtmltopdf](https://computingforgeeks.com/install-wkhtmltopdf-on-ubuntu-debian-linux/)
* Sass. Using `npm i sass` if you have npm or [download the binary](https://github.com/sass/dart-sass/releases)
  for your OS.

Take my CV and modify to your needs. Pandoc uses markdown extended syntax. This is how to
convert to html:
```bash
sass ./styles/index.scss ./index.css
pandoc --standalone -c index.css -f markdown index.md -t html -o index.html -H header.html
#pandoc --standalone -c style.css --from markdown --to html -o index.html index.md
```

And to pdf (I don't like the pandoc convertion from html to pdf using latex).

```
wkhtmltopdf --user-style-sheet index.css index.html index.pdf
```

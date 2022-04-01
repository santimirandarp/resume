sass ./styles/index.scss ./index.css
pandoc --standalone -c index.css -f markdown index.md -t html -o index.html -H header.html


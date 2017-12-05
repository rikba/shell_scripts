#!/bin/bash
# Download all .pdf links in an html.
# Use: ./download_pdfs index.html
grep -Eo '<a [^>]+>' $1 | \
grep -Eo 'href="[^\"]+"' | \
grep -Eo '(http|https)://[^>"]+' | \
grep -E "*.pdf" \
> links.txt
wget -i links.txt

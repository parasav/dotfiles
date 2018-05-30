#!/bin/bash
#wkhtmltopdf 'https://www.google.com/search?q=wkhtmltopdf&ie=utf-8&oe=utf-8&client=firefox-b-1-ab' test.pdf | ocrmypdf - test2.pdf
URL=$1
xURL="'$1'"
TITLE=$2
#echo $URL
DOMAIN=$( awk -F/ '{print $3}' <<< $xURL )
#echo $DOMAIN
#echo $URL | awk -F/ '{print $3}'
mkdir -p ${HOME}/web/${DOMAIN}
wkhtmltopdf $URL ${HOME}/web/${DOMAIN}/${TITLE}.pdf


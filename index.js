const fs = require('fs');
const wkhtmltopdf = require('wkhtmltopdf');
const path = require('path');

var outputHtml = "<html><body>"
var imagesPath = path.resolve('./images');
var images = fs.readdirSync(imagesPath);

//Append each image onto the html 
for (var image in images) {
    outputHtml += `<img src='${imagesPath}/${images[image]}' width=500 height=500/>`
}

outputHtml += "</body></html>"

wkhtmltopdf(outputHtml, {
    output: './generated.pdf',
    enableLocalFileAccess: true,
});
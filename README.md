## Images to PDF generator

A simple generator program which will take in images and dump them onto a PDF.

Uses `wkhtmltopdf` library.

### Prerequisites:
 - Docker

### How to use:
1. Clone repository
2. Create and add images into an `./images` folder in the root of the repo.
3. Execute `run_script.sh`

<b>In order to execute the `index.js` script outside of the docker container you will need the `wkhtmltopdf` library installed locally along with node and npm.</b>
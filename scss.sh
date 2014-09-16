#!/bin/bash
set -x

#scss --no-cache --watch src/files/scss/style.scss:src/files/style.css  --style compressed 
scss --no-cache --watch mockup/files/scss/:mockup/styles/  --style compressed 

wait
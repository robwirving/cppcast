#!/bin/bash
set -x

scss --no-cache --watch src/files/scss/style.scss:src/files/style.css  --style compressed 

wait
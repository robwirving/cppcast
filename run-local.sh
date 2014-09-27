#!/usr/bin/env bash

docpad clean
ulimit -S -n 2048
docpad run
open http://localhost:9778
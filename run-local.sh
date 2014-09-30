#!/usr/bin/env bash

open http://localhost:9778

docpad clean
ulimit -S -n 2048
docpad run
#!/bin/bash
7z a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on "$@"


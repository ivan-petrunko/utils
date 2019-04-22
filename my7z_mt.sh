#!/bin/bash
7z a -t7z -mx=9 -m0=LZMA2 -mmt8 "$@"


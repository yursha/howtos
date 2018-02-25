#!/usr/bin/env sh

vim $(find . -type f -not -path './.git/*')

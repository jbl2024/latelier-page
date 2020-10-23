#!/bin/bash
for i in *.png; do
    /usr/local/bin/pngquant 64 --skip-if-larger --strip --ext=.png --force "$i"
    /usr/local/bin/zopflipng -y "$i" "$i"
done


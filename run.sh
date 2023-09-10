#!/usr/bin/env bash
# -*- coding: utf-8 -*-

for directory in ./*; do
    [[ -L "${directory%/}" ]] && continue
    [[ ! -d "$directory" ]] && continue

    echo "=================================================="
    echo "$directory"
    echo "=================================================="

    cd "$directory" || continue
    ../isodl
    cd ../
done

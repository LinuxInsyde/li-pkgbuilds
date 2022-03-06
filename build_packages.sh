#!/usr/bin/env bash

printf ">>> Building Packages\n"

for p in $(/bin/ls x86_64); do
	cd x86_64/$p
	makepkg -sf --clean
	cd ../../
done

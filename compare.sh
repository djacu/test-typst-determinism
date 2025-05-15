#!/usr/bin/env bash

typst compile --format pdf main.typ
cp main.pdf main0.pdf

rm main.pdf

typst compile --format pdf main.typ
cp main.pdf main1.pdf

rm main.pdf

diff <(strings main0.pdf) <(strings main1.pdf)

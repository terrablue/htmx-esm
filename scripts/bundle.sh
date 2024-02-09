#!/usr/bin/env bash

esbuild=./node_modules/esbuild/bin/esbuild
format=esm
exports=exports
outdir=src/client-side-templates

npm i
$esbuild --format=$format --bundle $exports/handlebars.js --outdir=$outdir
$esbuild --format=$format --bundle $exports/mustache.js --outdir=$outdir
$esbuild --format=$format --bundle $exports/nunjucks.js --outdir=$outdir
$esbuild --format=$format --bundle $exports/htmx.js --outdir=src

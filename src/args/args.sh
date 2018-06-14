#!/usr/bin/env osascript -l JavaScript

run = argv => console.log(
  argv.map(x => x.padStart(10)).join('\n')
)

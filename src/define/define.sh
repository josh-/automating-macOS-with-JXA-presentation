#!/usr/bin/env osascript -l JavaScript

ObjC.import('DictionaryServices')

run = argv => {
    const word = argv[0]
    const range = { 'location': 0, 'length': word.length }
    let definition = $.DCSCopyTextDefinition(null, word, range)
    console.log(definition.js.split(" | ").join("\n"))
}

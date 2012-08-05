doc = %{<?xml version="1.0"?>
     <menu tipo="specialit�" giorno="venerd�">
    <primo_piatto>spaghetti al rag�</primo_piatto>
       <bevanda>frapp�</bevanda>
     </menu>}
#---
require 'iconv'
require 'charguess' # not necessary if input encoding is known

input_encoding = CharGuess::guess doc             # => "windows-1252"
output_encoding = 'utf-8'

converted_doc = Iconv.new(output_encoding, input_encoding).iconv(doc)

CharGuess::guess(converted_doc)                   # => "UTF-8"
#---

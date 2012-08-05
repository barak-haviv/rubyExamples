doc = %{<?xml version="1.0"?>
     <menu tipo="specialit�" giorno="venerd�">
    <primo_piatto>spaghetti al rag�</primo_piatto>
       <bevanda>frapp�</bevanda>
     </menu>}
#---
require 'charguess'

CharGuess::guess doc
# => "windows-1252"
#---
<xml version="1.0" encoding="utf-8"?>
#---
CharGuess::guess("\xA4\xCF")                 # => "EUC-JP"
#---
$ ruby extconf.rb --with-charguess-include=/location/of/charguess.h
$ make
$ make install
#---

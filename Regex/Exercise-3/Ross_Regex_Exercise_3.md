# Ross Regex Autotagging Exercise 3

1. Check for ```&```, ```<```, and ```>```
    - Find: ```&```
    - Find: ```<```
    - Find: ```>```
z
1. Tagging The paragraphs
    - Find: ```\n\n```
    - Replace: ```</p>\n<p>```

1. Isolate The Chapter Titles
    - Find: ```^<p>([IVX]+\..+)</p>$```
    - Replace: ```<title>\1</title>```
    
1. Wrapping The Characters
    - Find: ```<title>```
    - Replace: ```<\chapter>\n</chapter>\n<title>```
    
1. Wrapping All Of The ```" "``` in <quote>
    - Find: ```"(.*?)"```
    - Replace: ```<quote>\1</quote>```

1. Find All Of The ```<p\>``` and delete them
    - Find: ```<p\>```
    - Replace: ```(blank space)```

1. To indent everything and format it to XML, I did ```CMD+Shift+P```
# Ross Regex Autotagging Exercise 1

1. Find and replace ```&```
    - Find: ```&```
    - Replace:```&amp;```

1. Wrap Each Row with ```<movie>```
    - Find: ```^(.+)$``` 
    - Replace: ```<movie>\1</movie>```

1. Wrap each movie title with ```<title>```
    - Find: ```(<movie>)([^\t]+)\t```
    - Replace: ```\1<title>\2</title><year>```

1. Wrap each ```year```
    - Find: ```(<year>)([^\t]+)\t```
    - Replace: ```<year>\2</year><country>```

1. Wrap each ```country```
    - Find: ```(<country>)([^\t]+)\t```
    - Replace: ```<country>\2</country><runTime unit="min">```

1. Wrap each ```runTime```
    - Find: ```(<runTime unit="min">)([0-9]+)\smin```
    - Replace: ```<runTime unit="min">\2</runTime>```

1. Fix the missing ```N/A```
    - Find: ```(<runTime unit="min">)N/A```
    - Replace: ```<runTime unit="min">N/A</runTime>```
    
1. To indent everything and format it to XML, I did ```CMD+Shift+P```
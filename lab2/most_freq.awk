BEGIN {print pizdec; words["#!/bin/sh"] = 1} {
if ($1 == "#!/bin/sh") { 
 print "in";
 words[$1] += 1;
} else {
 words[$1] = 1
}
print words[$1]
} END {
 max = 0
 print "wha?"
 for (word in words) {
    if (words[word] > max) {
      max = words[word]
      res = word
     }
}
 print res
}

find / -type f -size +10M -not -path "./" -not -path "./proc/*" -printf "%s %p\n"| sort -nr

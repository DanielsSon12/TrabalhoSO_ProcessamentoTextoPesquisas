#!/bin/bash
1a: egrep -o '[01]*' bruxarias.txt > 1a.txt
1b: egrep -o '\b1[01]{7}\b' bruxarias.txt > 1b.txt
1c: egrep -o '^1[01]{7}$' bruxarias.txt > 1c.txt
1d: egrep -o '\b[1-9][0-9]*\b' bruxarias.txt > 1d.txt
1e: egrep -o '[ue]tt' bruxarias.txt > 1e.txt
1f: egrep -o '\b[A-Z]?[a-z]{2,}\b' bruxarias.txt > 1f.txt
1g: egrep -o '\b[a-zA-Z][a-zA-Z0-9_]*\b' bruxarias.txt > 1g.txt
1h: egrep -o '\b([0-9]{1,2}|2[0-5]{2})\.([0-9]{1,2}|2[0-5]{2})\.([0-9]{1,2}|2[0-5]{2})\.([0-9]{1,2}|2[0-5]{2})\b' bruxarias.txt > 1h.txt

2a: find /etc -type d > 2a.txt 
2b: find /etc -maxdepth 1 -type d > 2b.txt
2c: find /etc -type f -size +1k > 2c.txt
2d: find ~/ -type f -atime 7 > 2d.txt

3a: awk -F: '{print $1}' /etc/passwd > 3a.txt
3b: awk -F':' 'NR>=10 && NR<=20 {print $1}' /etc/passwd > 3b.txt

4a: sed 's/^daniel:/exercicio:/' /etc/passwd > 4a.txt
4b: sed -i '/^daniel:/d' /etc/passwd

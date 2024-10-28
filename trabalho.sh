#!/bin/bash
1a-
egrep -o '[01]*' bruxarias.txt > 1a.txt

1b-
egrep -o '1[01]{0,7}' bruxarias.txt > 1b.txt

1c-
egrep -o '^[01]{1,1} ' bruxarias.txt > 1c.txt

1d-
egrep -o '[123456789][0123456789]{0,}' bruxarias.txt > 1d.txt

1e-
egrep -o '[ue]tt' bruxarias.txt > 1e.txt

1f-
egrep -o '[[:alpha:]][a-z]{2,}' bruxarias.txt > 1f.txt

1g-
egrep -o '[[:alpha:]][[:alnum:]_]{0,}' bruxarias.txt > 1g.txt

1h-
egrep -o '(1[[0-9]{0,2}|2[0-4][0-9]{0,1}|25[0-5]|[0-9]{1,2})\.(1[[0-9]{0,2}|2[0-4][0-9]{0,1}|25[0-5]|[0-9]{1,2})\.(1[[0-9]{0,2}|2[0-4][0-9]{0,1}|25[0-5]|[0-9]{1,2})\.(1[[0-9]{0,2}|2[0-4][0-9]{0,1}|25[0-5]|[0-9]{1,2})' bruxarias.txt > 1h.txt

2a-
find /etc -type d  > 2a.txt

2b-
find /etc -maxdepth 1 -type d  > 2b.txt

2c-
find /etc -type f -size +1k  > 2c.txt

2d-
find ~/ -atime -7  > 2d.txt

3a-
awk -F ':' '{ print $1}' /etc/passwd > 3a.txt

3b-
awk -F ':' '{if (NR > 10 && NR < 20) print $1}' /etc/passwd > 3b.txt

4a-
sed "s/$USER/exercicio/" /etc/passwd > 4a.txt

4b-
sed "/$USER/d"  /etc/passwd > 4b.txt

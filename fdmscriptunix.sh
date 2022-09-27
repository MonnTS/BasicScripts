=== Ex 1
- 1
mkdir tradingSystem
- 2
touch countries / touch places
- 3
mv countries tradingSystem // mv places tradingSystem/cities
- 4
touch myProgram
ls -l myProgram
chmod u=rwx,g=rx,o=x
- 5
mkdir temp
cp myProgram temp
rm -r temp
- 6
file /etc/hosts || /dev/fd/0 || /dev/tty0 || /bin/touch
- 7
cp *.dat ~/systemTrading/
- 8
cp -r day1 day2 ~/
- 9
ls -ls | sort -nr | head -1
-- 10
tail -2 plaaces.dat
-- 11
head -5 companies.dat
=== Ex2
- 1
ls > homeList
-2
tail -20 passwd > ~/newUser
-3
ls | wc -l
-4
ls > newHomeList; wc -l < newHomeList
-5
cat companies.dat | head -4 | tail -1
-6
ls -ls | sort -nr | head -5 > bigFiles.txt
-7
find /student_files/ -type f -name '*.dat' > ~/datFiles; wc -l < ~/datFiles
-8
cat /student_files/brokers.dat | head -10 | tail -3
=== Ex3
-1
cd tradingSystem
-2
grep Smith brokers.dat
grep -v "^[0-9]" brokers.dat
grep "[n]$" brokers.dat
-3
grep "[B|b]" companies.dat
grep "[B|b|a|A]" companies.dat | wc -l
grep "\w.*\s.*\w" companies.dat
-4
grep 'British' currency.dat
grep '[$]' currency.dat
-5
find . -type f -name "*.dat"
-6
find /student_files/ -type f -size +1k
-7
find . -type f -empty -delete
-8
ls -l | grep ^-
=== Ex4
-1
sleep 1000 &
-2
ps
-3
kill PID
-4
sleep 1000 &
-5 
jobs
-6
fg %[No of Job]
-7
kill pid
=== Ex6.1
-1
cut -c5 accounts
-2
echo "FDM Academy" | cut -c5
-3
cut -c1-4 accounts
-4
cut -c1,6 accounts
-5
cut -d":" -f2 accounts
-6
cut -d":" -f3,4 accounts | tr ':' ' '
-7
head -2 accounts | tail -1 | cut -d":" -f2,4
=== Ex6.2
-1
head -5 /etc/passwd
-2
head -5 /etc/passwd | sort
-3
sort -t":" -k 2 accounts
-4
sort -t":" -n -k 4 accounts
-5
cut -d":" -f3,3 accounts | sort --reverse
-6
cut -d":" -f2,2 accounts | sort > sortByName.txt
=== Ex6.3
-1
cat accounts | tr '0-9' '*'
-2
cat accounts | tr -d [:upper:]
-3
cut -d":" -f2,2 accounts | tr [:lower:] [:upper:]
-4
cat accounts | tr ':' ',' > commaStorage.txt
-5
cut -c 4- accounts
=== Ex7
-1
grep 'sleep' /student_files/day1/batchprog  | wc -l
-2
grep '^PIN534' accounts
-3
cut -d":" -f 1,1 /etc/passwd | sort
-4
ls -d */
ls -p | grep -v / 
-5
finger | grep 'daniil' | tr [:lower:] [:upper:]
-6
cat accounts | head -2 | tail -1
-7
wc -l < accounts > totalLine.txt
-8
grep "^PIN756" accounts > deletedStorage.txt | sed -i '2d' accounts
-9
less is better cause you can scroll up and down while more only allows to read only down
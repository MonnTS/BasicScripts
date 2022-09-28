== Ex1
-1
#!/bin/bash
echo $LOGNAME
echo $HOME
echo $PATH
-2
#!/bin/bash
echo "Hello, $LOGNAME" | cut -d'\' -f 2,2
-3
#!/bin/bash
mkdir mydir
touch myfile1
touch myfile2
touch myfile3
-4
#!/bin/bash
mv myfile1 myfile2 myfile3 ~/scripts/mydir
echo "Move operation completed"
ls ~/scripts/mydir
-5
#!/bin/bash
cat /examples/lionsInTheStreet | head -6
-6
#!/bin/bash
ls ~/ | wc -l
=== Ex2
-1
#!/bin/bash
echo "Enter a word"
read x
echo You entered $x
-2
#!/bin/bash
echo "Enter a word"
read x
echo ${#x}
-3
#!/bin/bash
echo "Enter a word"
read x
echo "The word $x has ${#x} letters"
-4
#!/bin/bash
echo "The argument is $1";
-5
#!/bin/bash
STR="$1"
echo ${#STR}
-6
#!/bin/bash
touch $1
ls -id $1
-7
#!/bin/bash
mv ~/scripts/kidNamedFinger ~/scripts/$1.$2
ls -id $1.$2
=== Ex3
--1
#!/bin/bash
F="$1"
D="$2"
if [ "$D" -gt "$F" ]; then
echo "The second number is greater than first"
elif [ "$D" -eq "$F" ]; then
echo "They both are eqal"
else
echo "The first number is greater than second"
fi
--2
#!/bin/bash
FIRST="$1"
SECOND="$2"
if [ "${#SECOND}" -gt "${#FIRST}" ]; then
echo "The second number is greater than first"
elif [ "${#SECOND}" -eq "${#FIRST}" ]; then
echo "They both are eqal"
else
echo "The first number is greater than second"
fi
--3
#!/bin/bash
if [ "$#" == 0 ]; then
echo "No arguments provided"
exit
else
if [ "$#" != 2 ]; then
echo "Only 2 args"
exit
else
F="$1"
D="$2"
if [ "$D" -gt "$F" ]; then
echo "The second number is greater than first"
elif [ "$D" -eq "$F" ]; then
echo "They both are eqal"
else
echo "The first number is greater than second"
fi
fi
fi

#!/bin/bash
if [ "$#" == 0 ]; then
echo "No arguments provided"
exit
else
if [ "$#" != 2 ]; then
echo "Only 2 args"
exit
else
FIRST="$1"
SECOND="$2"
if [ "${#SECOND}" -gt "${#FIRST}" ]; then
echo "The second number is greater than first"
elif [ "${#SECOND}" -eq "${#FIRST}" ]; then
echo "They both are eqal"
else
echo "The first number is greater than second"
fi
fi
fi
--4
#!/bin/bash
echo "Enter file name"
read x

if [ ! -f "$x" ]; then
echo "file doesnt exist"
else
echo "Do you want to delete file -- $x?"
read answer
if [ "$answer" == "Y" ] || [ "$answer" == "y" ]; then
rm -f "$x"
elif [ "$answer" == "N" ] || [ "$answer" == "n" ]; then
exit
else
echo "Invalid input"
fi
fi
--5
#!/bin/bash
read -p "Menu: 1-Display the date and time 2-Display the current working directory 3-Display the process being run by the current user " choice
if [ $choice -lt 1 ] || [ $choice -gt 4 ]; then
echo "Invalid input"
exit
else
if [ $choice -eq 1 ]; then
now="$(date)"
echo "$now"
else
if [ $choice -eq 2 ]; then
pwd
else
if [ $choice -eq 3 ]; then
ps -U $LOGNAME
fi
fi
fi
fi
--6
#!/bin/bash

now="$(date +%H)"
user="$(echo $LOGNAME | cut -d'\' -f 2,2)"

if [ $now -lt 12 ]; then
echo "Good morning, $user"
else
if [ $now -gt 12 ] && [ $now -lt 18 ]; then
echo "Good afternoon, $user"
else
if [ $now -gt 18 ]; then
echo "Good evening, $user"
fi
fi
fi
=== ex4
--1-2
#!/bin/bash

for args in "$@"
do
if [ -f "$args" ]; then
echo "File size of $args is $(du -h $args)"
fi
done
--3
#!/bin/bash

for args in $@
do
sum=`expr $sum + $args`
done
echo "$sum"
--4
#!/bin/bash

i=0
for args in $@

do
i=`expr $i + 1`
echo "Line $i contains ${#args} characters"
done
--5
#!/bin/bash

while [ "$choice" != "4" ]; do
read -p "Menu: 1-Display the date and time 2-Display the current working directory 3-Display the process being run by the current user 4-Exit" c$if [ $choice -lt 1 ] || [ $choice -gt 4 ]; then
echo "Invalid input"
exit
else
if [ $choice -eq 1 ]; then
now="$(date)"
echo "$now"
else
if [ $choice -eq 2 ]; then
pwd
else
if [ $choice -eq 3 ]; then
ps -U $LOGNAME
fi
fi
fi
fi
done
--6
#!/bin/bash

echo "Enter a word"
read word
j=0
length=${#word}
for ((i=0;i<$length;i++)); do
        j=`expr $j + 1`
        printf "Letter $j: ${word:$i:1}\n"
done
=== Ex5
-- 1-2
#!/bin/bash

function isValidArgs() {
        argsLength=$#
        if [ $argsLength -lt 2 ] || [ $argsLength -gt 3 ]; then
                echo "Invalid no of args"
                exit 1
        fi
}

function isNumericArgs() {
        for args in $@
        do
                if [[ $args = *[!0-9]* ]]; then
                        echo "$args is not a number"
                        exit 1
                fi
        done
}

function toSum() {
        result=`expr $1 + $2`
        echo "$1 + $2 = $result"
}

function toSub() {
        result=`expr $2 - $1`
        echo "$2 - $1 = $result"
}

function toMul() {
        result=`expr $1 * $2`
        echo "$1 * $2 = $result"
}

function toDiv() {
        result=`expr $1 / $2`
        echo "$1 / $2 = $result"
}

isValidArgs $@
isNumericArgs $@
read -p "1.add 2.sub 3.mul 4.div " choice
if [ $choice -eq 1 ]; then
toSum $@
if [ $choice -eq 2 ]; then
toSub $@
if [ $choice -eq 3 ]; then
toMul $@
if [ $choice -eq 4 ]; then
toDiv $@
fi
fi
fi
fi
=== Ex6
--1


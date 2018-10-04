# Program to print the following pattern on the screen
#	1
#	22
#	333
#	4444
#	55555
for (( i=1; i<=5; i++ ))
do
    for (( j=1; j<=i;  j++ ))
    do
     echo -n "$j"
    done
    echo ""
done
echo ""
echo ""
echo ""
for (( i=1; i<=5; i++ ))
do
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " |"
    done
    echo "_ "
done


echo ""
echo ""
echo ""


for (( i=1; i<=5; i++ ))
do
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " *"
    done
    echo ""
done

echo ""
echo ""
echo ""

for (( i=1; i<=5; i++ ))
do
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " *"
    done
    echo ""
done

for (( i=5; i>=1; i-- ))
do
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " *"
    done
    echo ""
done

for (( i=1; i<=3; i++ ))
do
    for (( j=1; j<=i;  j++ ))
    do
     echo -n "|Linux"
    done
    echo "______"
done

echo ""
echo ""
echo ""

for (( i=3; i>=1; i-- ))
do
    for (( j=1; j<=i;  j++ ))
    do
     echo -n "|Linux"
    done
    
    if [ $i -eq 3 ]; then
       echo -n "______"
       echo -n -e ">> Powerd Server.\n"
    else
       echo "~~~~~"
    fi
done

echo ""
echo ""
echo ""

MAX_NO=0

echo -n "Enter Number between (5 to 9) : "
read MAX_NO

if ! [ $MAX_NO -ge 5 -a $MAX_NO -le 9 ] ; then
   echo "I ask to enter number between 5 and 9, Okay"
   exit 1
fi

for (( i=1; i<=MAX_NO; i++ ))
do
    for (( s=MAX_NO; s>=i; s-- ))
    do
       echo -n " "
    done
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " $i" 
    done
    echo ""
done

for (( i=1; i<=MAX_NO; i++ ))
do
    for (( s=MAX_NO; s>=i; s-- ))
    do
       echo -n " "
    done
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " ."
    done
    echo ""
done

echo ""
echo ""
echo ""

for (( i=1; i<=MAX_NO; i++ ))
do
    for (( s=MAX_NO; s>=i; s-- ))
    do
       echo -n " "
    done
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " ." 
    done
    echo ""
done
###### Second stage ######################
##
##
for (( i=MAX_NO; i>=1; i-- ))
do
    for (( s=i; s<=MAX_NO; s++ ))
    do
       echo -n " "
    done
    for (( j=1; j<=i;  j++ ))
    do
     echo -n " ."
    done
    echo ""
done
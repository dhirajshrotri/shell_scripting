declare -a fname=("Sachin" "Rahul" "Sikhar" "Virat")
declare -a lname=("Tendulkar" "Dravid" "Dhawan" "Kohli")
declare -a url=("1735" "2060" "3832" "3600")
for (( c=0; c<=4; c++ ))
do 
	echo "${fname[$c]} ${lname[$c]}";
   curl "http://howstat.com/cricket/Statistics/Players/PlayerOverview.asp?PlayerID=${url[$c]}" -o centuries.html -s;
    sed -e 's/<[^>]*>//g' centuries.html>stats1.txt;
	
	cat stats1.txt | grep -A 4 "100s" | grep -v "100s"; 
done

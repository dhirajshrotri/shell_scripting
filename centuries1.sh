
fname="Rahul"
lname="Dravid"
POINTER_TEXT="100s/50s"
curl "http://howstat.com/cricket/Statistics/Players/PlayerOverview.asp?PlayerID=2060" -o centuries.html -s | sed -e 's/<[^>]*>//g' centuries.html>stats1.txt
echo "$fname $lname"
cat stats1.txt | grep -A 4 "100s" | grep -v "100s" 
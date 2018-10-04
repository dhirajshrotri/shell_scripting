#curl -O -s https://easyweb.livevacancies.co.uk/indeed.xml
grep "<company>" indeed.xml | sed --expression 's/[<*].................//g' | sed --expression 's/[]]><\/company>//g' | sort | uniq -c
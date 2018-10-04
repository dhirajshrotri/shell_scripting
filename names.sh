BEGIN { FS=":"; OFS=": "; ORS="\n" } 
{ print 
	"dn" "uid="$1 ", dc=example, dc=com";
	"cn" $2 $3;
	"sn" $3;
	"telephone" $4;
 }
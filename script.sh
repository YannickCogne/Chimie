for i in {1..2}
do
mkdir pyr$i
cat modele.com | sed s/jesuisunmodele/pyr$i/g | sed s/title/nvotitle$i/g > ./pyr$i/pyr$i.com
awk '{if (NR>3){ print} }END{print ""}'  pyr$i.xyz >> ./pyr$i/pyr$i.com

done
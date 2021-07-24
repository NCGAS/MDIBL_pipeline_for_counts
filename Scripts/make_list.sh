cp make_1.sh make_1.listed.sh
cp make_2.sh make_2.listed.sh
#assumes your sequences are named SAMPLE_1.* and SAMPLE_2.*
sed -i "s/()/$(ls -lAh ../Input_Sequences/ | sed 1d | awk '{print $9}' | sed 's/_[12].*$//g' | sort | uniq | tr '\n' '&' | sed -e 's/&/" "/g' -e 's/^/("/g' -e 's/ "$/)/g')/g" make_1.listed.sh
sed -i "s/()/$(ls -lAh ../Input_Sequences/ | sed 1d | awk '{print $9}' | sed 's/_[12].*$//g' | sort | uniq | tr '\n' '&' | sed -e 's/&/" "/g' -e 's/^/("/g' -e 's/ "$/)/g')/g" make_2.listed.sh

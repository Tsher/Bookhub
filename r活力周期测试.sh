#!/bin/bash
 ## filename: r�������ڲ���.sh
 ## powered by ritow.qi
 ## date: 2009-9-9
 
[ $# != 1 ] && { echo "use: $0 12345 " ; exit 1 ; }
 echo $1 |grep -qE '[^0-9]|^0' && { echo "use: $0 12345 " ; exit 1 ; }
 
daylife=$1
 echo -n "your birthday is: "
 date +%F -d "$daylife day ago " || exit 65 

enddate=$((daylife+10))
 ##echo  "from $daylife to $enddate "
 
#exit
 
for (( i=$daylife ; i< $enddate ; i++))
 do
     let "j=i-daylife"
     zl=$((i%33))
     qx=$((i%28))
     tl=$((i%23)) 
    date +%F -d "$j day "
     echo -ne "����: $zl /t"
     echo -ne "����: $qx /t"
     echo -ne "����: $tl /t"
     
    [ $zl -le 16 ] && echo -n "����: ��  " || echo -n  "����: ��   "
     [ $qx -le 14 ] && echo -n "����: ��  " || echo -n  "����: ��   "
     [ $tl -le 11 ] && echo -n "����: ��  " || echo -n  "����: �� "
 
    echo ;echo '-----------------------------------------------------------------------------' 
done
 
exit 0

#!/bin/bash
 ## filename: r活力周期测试.sh
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
     echo -ne "智力: $zl /t"
     echo -ne "情绪: $qx /t"
     echo -ne "体力: $tl /t"
     
    [ $zl -le 16 ] && echo -n "智力: √  " || echo -n  "智力: ×   "
     [ $qx -le 14 ] && echo -n "情绪: √  " || echo -n  "情绪: ×   "
     [ $tl -le 11 ] && echo -n "体力: √  " || echo -n  "体力: × "
 
    echo ;echo '-----------------------------------------------------------------------------' 
done
 
exit 0

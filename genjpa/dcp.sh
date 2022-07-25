#!/bin/bash

for a in `find /d/lbg/skims -name "*.java" | grep -v genjpa | grep -v gateway | grep -v Skims | grep -v config | grep -v Abstract`
do 
    echo $a '--------------------------------'
    dir=`dirname $a`
	filename=`basename $a`

    case $a in
        *controller* )  cp /d/lbg/genjpa/controller/$filename $dir ;;
		*entity* )      cp /d/lbg/genjpa/domain/entity/$filename $dir ;;
		*repository* )  cp /d/lbg/genjpa/domain/repository/$filename $dir
		                
						listenerfile=`echo $filename | sed 's/Repository/Listener/g'`
						listenerdir=`echo $dir | sed 's/repository/listener/g'` 
						
						if [ ! -d $listenerdir ]
						then 
						    mkdir -p $listenerdir
						    tmp=`echo $dir | sed 's/repository/service/g'`
                            mkdir -p $tmp
                            tmp=`echo $dir | sed 's/domain\/repository/dto/g'`
						    mkdir -p $tmp								
						fi
						cp /d/lbg/genjpa/domain/listener/$listenerfile $listenerdir;;
		*) echo error 
	esac
	echo 
done
                        	
			 
	   
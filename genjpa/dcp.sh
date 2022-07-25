#!/bin/bash

for a in `find /d/lbg/skims -name "*.java" | grep -v genjpa | grep -v gateway | grep -v Skims | grep -v config | grep -v Abstract`
do 
    echo $a '--------------------------------'
    dir=`dirname $a`
	file=`basename $a`

    case $a in
        *controller* )  echo cp /d/lbg/genjpa/controller/$filename $dir ;;
		*entity* )      echo cp /d/lbg/genjpa/domain/entity/$filename $dir ;;
		*repository* )  echo cp /d/lbg/genjpa/domain/repository/$filename $dir
		                     listenerfile=`echo $file | sed 's/Repository/Listener/g'`
						     listenerdir=`echo $dir | sed 's/repository/listener/g'` 
						     if [ ! -d $listenerdir ]
							 then 
						         echo mkdir -p $listenerdir
								 tmp=`echo $dir | sed 's/repository/service/g'`
                                 echo mkdir -p $tmp
                                 tmp=`echo $dir | sed 's/domain\/repository/dto/g'`
								 echo mkdir -p $tmp								
						     fi
						echo cp /d/lbg/genjpa/domain/listener/$listenerfile $listenerdir;;
		*) echo error 
	esac
	echo 
done
                        	
			 
	   
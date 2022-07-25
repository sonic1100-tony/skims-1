#!/bin/bash

checkCp()
{
    if [ -f $1 ]
	then
	    cp $1 $2
	else
	    echo The $1 File does not exist.
	fi
}

for a in `find /d/lbg/skims/skimscus -name "*.java" | grep -v genjpa | grep -v gateway | grep -v Skims | grep -v config | grep -v Abstract`
do 
    echo $a '--------------------------------'
    dir=`dirname $a`
	filename=`basename $a`

    case $a in
        *controller* )  checkCp /d/lbg/genjpa/controller/$filename $dir ;;
		*entity* )      checkCp /d/lbg/genjpa/domain/entity/$filename $dir ;;
		*repository* )  checkCp /d/lbg/genjpa/domain/repository/$filename $dir;;
		*listener* )    checkCp /d/lbg/genjpa/domain/listener/$filename $dir;;
						#listenerfile=`echo $filename | sed 's/Repository/Listener/g'`
						#listenerdir=`echo $dir | sed 's/repository/listener/g'` 
						#
						#if [ ! -d $listenerdir ]
						#then 
						#    mkdir -p $listenerdir
						#    tmp=`echo $dir | sed 's/repository/service/g'`
                        #    mkdir -p $tmp
                        #    tmp=`echo $dir | sed 's/domain\/repository/dto/g'`
						#    mkdir -p $tmp								
						#fi
						#checkCp /d/lbg/genjpa/domain/listener/$listenerfile $listenerdir;;
		*) echo error ;;
	esac
	echo 
done
                        	
			 
	   
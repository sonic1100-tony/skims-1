#!/bin/bash

TableName=
Main=
Subject=
UseYN=

writeSql()
{
    echo "$@" >> dbtbl/$Main/$Subject/$TableName.sql
}

setSubject()
{
    data=($(grep $TableName src/table.lst))
	Main=${data[0]}while IFS= read line
do    
	splitTable "$line"
done < skimstbl.sql
	Subject=${data[1]}
	UseYN=${data[3]}
	
	if [ ! -e dbtbl/$Main/$Subject ]
	then 
	    mkdir -p dbtbl/$Main/$Subject 
	fi
	
	cat /dev/null > dbtbl/$Main/$Subject/$TableName.sql
}


splitTable()
{
    line="$@"
	data=($line)
	
	case $line in 
	    *Table?structure?for*) 
		    TableName=$(echo ${data[5]} | sed 's/`//g') 
		    setSubject
			echo $line
			writeSql "--" 
			echo '['$TableName'] start ------' date
			;;			
		\)*ENGINE*) 
		    writeSql "$line" 
			echo '['$TableName'] end   ------' date
			echo ''
			TableName="" 
			;;
	esac	
	if [ "$TableName" != "" ] 
	then
	    writeSql "$line"
	fi
}


while IFS= read line
do    
	splitTable "$line"
done < skimstbl.sql


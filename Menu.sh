#!/bin/bash

echo "Enter your choice:"
echo -e "1.Printing Pattern \n 2.List File \n 3.Create File \n 4.Copy Content of oneFile to anotherFile \n 5.Move File \n 6.Compress Files Directory \n 7.Extract Files \n *.Exit"

read choice

case $choice in
1)
	echo "Enter a number:"
	read p
	for((m=1; m<=$p; m++))
	do
		for((a=i; a<=$p; a++))
		do
			echo -ne " ";
		done
		for((n=1; n<=m; n++))
		do
			echo -ne "#";
		done
		for((i=1; i<m; i++))
		do
			echo -ne "#";
		done
    		echo;
	done
	;;
2)
	echo "*******Listing Files:*********"
	ls
	;;
3)
	echo "************Creating File****************"
	echo "Enter Filename to create File"
	read filename
	$(touch $filename)
	ls
	;;
4)
	echo "**********Copy Content********* "
	$(cp oneFile.txt anotherFile.txt)
	echo "Content Copied"
	;;
5)
	echo "*********Moving File************ "
	echo "Enter source File path:"
	read sourcepath
	echo "Enter Destination File path:"
	read despath
	$(mv $sourcepath $despath)
	;;
6)
	echo "********Compressing File********"
	echo "Enter Files path to be ccompressed"
	read path
	$(tar -czf New.tar.gz $path)
	;;
7)
	echo "********Extrating File*******"
	echo "Enter File Name to  be Unzipped"
	read des
	$(gunzip $des)
	;;
*)
	echo "Exit"
	;;
esac

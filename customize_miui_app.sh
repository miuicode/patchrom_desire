#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply

curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name *.patch`
    do
		cd out
		$GIT_APPLY ../$patch
		cd ..
		for rej in `find $2 -name *.rej`
		do
			echo "Patch $patch fail"
			exit 1
		done
    done
}

function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

function mergyResValues() {
	$XMLMERGYTOOL $1/res/values $2/res/values
}
if [ $1 = "DeskClock" ];then
	$XMLMERGYTOOL $1/res/drawable-hdpi $2/res/drawable-hdpi
fi

if [ $1 = "Music" ];then
	$XMLMERGYTOOL $1/res/drawable-hdpi $2/res/drawable-hdpi
fi

if [ $1 = "Provision" ];then
	$XMLMERGYTOOL $1/res/drawable-hdpi $2/res/drawable-hdpi
	$XMLMERGYTOOL $1/res/drawable-zh-rCN-hdpi $2/res/drawable-zh-rCN-hdpi
	$XMLMERGYTOOL $1/res/drawable-zh-rTW-hdpi $2/res/drawable-zh-rTW-hdpi
fi

if [ $1 = "Mms" ];then
	mergyResValues $1 $2
fi

if [ $1 = "MiuiHome" ];then
	mergyResValues $1 $2
	$XMLMERGYTOOL $1/res/drawable-hdpi $2/res/drawable-hdpi
fi

if [ $1 = "ThemeManager" ];then
	mergyResValues $1 $2
fi

if [ $1 = "Settings" ];then
	applyPatch $1 $2
	mergyResValues $1 $2
fi

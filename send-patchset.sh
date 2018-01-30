#!/bin/sh
clear
FILE="$1" #staging driver location eg: /driver/staging/dgnc
N="$2" #number of commits in the set
VERSION="$3"

TO="$(perl scripts/get_maintainer.pl --separator , --nokeywords --nogit --nogit-fallback --norolestats -f $FILE)"
ADD=", Jonathan Corbet <corbet@lwn.net>, Greg KH <gregkh@linuxfoundation.org>"
CC="Julia Lawall <julia.lawall@lip6.fr>" #hard-code cc list for now
#CC=""
#TO="aishpant@gmail.com"
echo "To: $TO$ADD"
echo "CC: $CC"
LAST_COMMIT="$(git log -$N --format="%h" | sed -n 1p)"
FIRST_COMMIT="$(git log -$N --format="%h" | sed -n $N\p)"
COMMIT_RANGE="$FIRST_COMMIT^..$LAST_COMMIT"
echo "Revisions: $COMMIT_RANGE"

if [ -z "$VERSION" ]
then
	SUBJECT="PATCH"
else
	SUBJECT="PATCH v$VERSION"
fi

if [ "$N" = '1' ]
then
	DRAFTS="$(git format-patch -o /tmp/ HEAD^ --subject-prefix="$SUBJECT" --cc="$CC" --to="$TO$ADD")"
else
	DRAFTS="$(git format-patch -o /tmp/ --cover-letter -n --subject-prefix="$SUBJECT" --thread=shallow --cc="$CC" --to="$TO$ADD" $COMMIT_RANGE)"
fi

for DRAFT in $DRAFTS
do
	echo $DRAFT
	mutt -H $DRAFT
done

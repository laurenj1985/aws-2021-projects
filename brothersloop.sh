#!/bin/bash
#looping through my brothers names

brother=("Tyler Adrian Chris Fredrick")
for brother in $brother
do
if [ $brother == 'Tyler' ]
then
echo "My brother $brother and I think alike"
elif [ $brother == 'Fredrick' ]
then echo "We aren't blood, but $brother is my brother"
else
echo "I love my brother $brother"
fi
done

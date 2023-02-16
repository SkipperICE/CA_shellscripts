#ca_shellscripts_6.sh

#In this exercise, you will need to change Warren Buffett's known saying. First create a variable ISAY and assign it the 
 #original saying value. Then re-assign it with a new changed value using the string operations and following the 4 defined changes:
#Change1: replace the first occurrence of 'snow' with 'foot'. Change2: delete the second occurrence of 'snow'. 
#Change3: replace 'finding' with 'getting'. Change4: delete all characters following 'wet'. 
#Tip: One way to implement Change4, if to find the index of 'w' in the word 'wet' and then use substring extraction.


BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY="Life is like a snowball. The important thing is finding wet snow and a really long hill."
change_1=${ISAY[@]/snow/foot} 
change_2=${change_1[@]//snow/}
change_3=${change_2[@]/finding/getting}
    loc=$(expr index "$change_3" 'w')
ISAY=${change_3:0:loc}

# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo "$ISAY"

#Pas reussi... probleme sur le loc=$(expr index "$change_3" 'w')

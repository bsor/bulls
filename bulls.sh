#! /usr/bin/env bash

#To do:
#Find a way to make it available remotely/upload/email.
#Add standard permissions to execute.


#Welcome/Info message
echo
echo "####################################################"
echo "#                                                  #"
echo "#                 1. Name the list.                #"
echo "#                                                  #"
echo "#           2. Enter items to your list.           #" 
echo "#                                                  #"
echo "#   Separate each item with a comma, like this:    #"
echo "#                                                  #"
echo "#      Pasta 500g, Eggs, Tomatoes x2, Cheese       #"
echo "#                                                  #"
echo "#           3. Hit enter to save the list.         #"
echo "#                                                  #"
echo "####################################################"
echo

#Lets user name the list and store it in a variable.
echo "Give a name to your shoppinglist, e.g 'Dinner_Monday':"
echo
read listname1
echo
echo "List is named '$listname1'. Type away!"
echo

#Accept user input and store in variable. This is where the items go.
read items1

#Clean up to look better
clear
echo

#Direct contents of variable to new file, sed is used to create a new line after every comma 
echo $items1 | sed -e 's/\"//g' -e 's/, /\n/g' > $listname1 

#Append '* ' to beginning of every line
sed -i -e 's/^/* /' $listname1
echo

#Display the list
echo "Items in $listname1:"
echo
cat $listname1
echo

#Informing user where he/she can find the final list.
echo "**Saved as '$listname1' in the same directory you ran the script from**"
echo

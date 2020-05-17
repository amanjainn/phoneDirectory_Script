#!/bin/bash

while :
do
clear
echo "Welcome to ISE 4th Sem  section-A phone directory"
echo "1. Add a student "
echo "2. Search a student"
echo "3. Delete a student"
echo "4. View Phone Directory"
echo "5. Quit"

read -p "Enter your choice " usr_cmd
clear

case $usr_cmd in
1)echo "Add new student"
  read -p "Enter Name:" name
  read -p "Enter USN: " usn
  read -p "Enter phone number: " number
  read -p "Enter email address: " email
  clear
  echo "New student Added"

  echo  "Name : $name : USN  $usn : PhNO $number : ID $email " >> phonedir.log 

;;


2) echo "Search a student" 
   read -p "Enter name of student " search_query
   clear
   echo  "Search Results:"
   grep -i $search_query  phonedir.log   


 ;;
3)echo "Delete a student"
   read -p "Enter name of student : " delete_stud
   sed -i -e "/$delete_stud/d" phonedir.log
   echo "Deleted successfully"
;;
4)echo "PHONE DIRECTORY"
  echo ""
  cat phonedir.log ;;
5)break ;;
*)echo "INVALID OPTION" ;;
esac;

read -p "Press 5 to Quit " confirm_exit
if [$confirm_exit  -eq 5]
then break
fi
done

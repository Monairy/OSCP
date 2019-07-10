echo "Enter Subnet" :
read Subnet
 for i in {1..255}; 
   do ping -c 1 Subnet.$i | tr \\n ' ' | awk '/1 received/ {print $2}'; 
  done

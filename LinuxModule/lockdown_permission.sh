<<COMMENT
Name : Mahaboob basha S.R
Date: 03-11-2021
Description: Lockdown particular files permission for a particular directory directory
Sample input: dir/
Sample output : rw-----1
COMMENT

arr=(`ls -al`)
dir=$1
if [ $# -ne 0 ]
then
        for i in ${arr[@]}
        do
               `chmod go-rwx $dir`
        done
        echo "${arr[@]}"
else
        echo "Error: Pleas pass the directory name through CLA!"
fi

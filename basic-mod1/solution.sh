#!/bin/bash

# Instructions:
# We found this weird message being passed around on the servers, we think we have
# a working decrpytion scheme. Download the message here. Take each number mod 37
# and map it to the following character set: 0-25 is the alphabet (uppercase), 
# 26-35 are the decimal digits, and 36 is an underscore. Wrap your decrypted 
# message in the picoCTF flag format (i.e. picoCTF{decrypted_message})


# Array with character mappings
char_map=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z 0 1 2 3 4 5 6 7 8 9 _)

echo -n "picoCTF{"
for number in `cat message.txt`
do 
  index=`expr ${number} % 37`
  echo -n "${char_map[${index}]}"
done
echo "}"

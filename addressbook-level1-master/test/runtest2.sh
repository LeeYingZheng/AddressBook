#!/usr/bin/env bash

# change to script directory
cd "${0%/*}"

# compile the code into the bin folder
javac  ../src/seedu/addressbook/AddressBook.java -d ../bin

# (invalid) no parent directory, invalid filename with no extension
java -classpath ../bin seedu.addressbook.AddressBook 'addressbooktest.txt' < /user/l/leezheng/CS2103T/addressbook-level1-master/addressbook-level1-master/test/input2.txt > output21.txt


# compare the output to the expected output
diff output21.txt expected2.txt
if [ $? -eq 0 ]
then
    echo "Test result: PASSED"
else
    echo "Test result: FAILED"
fi
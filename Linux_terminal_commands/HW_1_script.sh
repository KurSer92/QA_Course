#!/bin/bash
cd ./git/QA_Course/Linux_terminal_commands
mkdir dir_1 dir_2 dir_3
cd dir_1
touch tfile_1.txt tfile_2.txt tfile_3.txt jfile_1.json jfile_2.json
mkdir fldr_1 fldr_2 fldr_3
ls -la
mv ./{tfile_1.txt,jfile_1.json} ./fldr_1/

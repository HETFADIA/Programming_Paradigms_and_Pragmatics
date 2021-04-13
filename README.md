# CS202
### Let the file name be HelloWorld and the class should be also HelloWorld
### compile javac HelloWorld.java
### run java HelloWorld
### compile and run java HelloWorld.java
##### to make tar.gz file first make tar then make gz file
##### to make tar file make a folder containing the files and then go to 7z and then go to add to archive select gz and then gz zip will happen
##### to make gz zip take the above step and then zip it using gzip



##### to find tokens in a program
##### clang -fsyntax-only -Xclang -dump-tokens practice.c in terminal

To fun flex file:

Two ways:
1)
flex Count.l
gcc lex.yy.c  -o Count.exe
Count.exe
2)
flex Count.l
gcc lex.yy.c  -w
a.exe



To run bison file

Two ways:
flex ab.l
bison -dy ab.y
gcc lex.yy.c y.tab.c -w
a.exe


flex ab.l
bison -dy ab.y
gcc lex.yy.c  -o ab.exe
ab.exe


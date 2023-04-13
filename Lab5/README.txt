To run the program ReverseString: python ReverseString.py
To run the program PascalTriangle: python PascalTriangle.py
To run the program RemoveDuplicates: python RemoveDuplicates.py




ReverseString


It will ask you to input a string.
Then in the function it will run a loop and append the string from reverse.
Finally in the function I have printed the reversed string




PascalTriangle


In it you have to enter the number n
It will print the pascal triangle (center aligned) of number n.
I have used a list of lists to use the pascal triangle.
In the pascal triangle the next list can be made from previous list by adding adjacent values(I have made a function for it) and adding 1 to the front as well as end.




RemoveDuplicates


I have used two functions to remove duplicates.


RemDupLoop
The first function RemDupLoop checks if a number has appeared in the list or not(which takes order(n) time).
If it has not appeared it appends it else it goes on with the next loop.
Thus this function takes order(n^2) time as as there is also a loop outside


RumDupSet:
Here we make a set of the list. Since a set does not contain duplicates so all the duplicates of the list will be Removed
Then we make a list of the set and return that list.



This method takes order(n) time because we can make set of list in order n time as it uses hashing.
This method is very fast compared to the RemDupLoop


So RumDupSet is better than RumDupLoop
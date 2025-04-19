# stock-picker
In this project I will take in an array of stock prices and return the pair of days on which it is best to buy and sell.  Stocks must be bought before they can be sold.

Reflections:
I ran into an error where current profit was not getting calculated and was returning nil and then caused the program to return an undefined method for '>' nil.  This was thrown as a result of how I was attempting to make sure current index was less than next day.
The solution was to add the next line to skip to the next iteration if index was greater than or equal to the next days index.

This was good practice with nested array calls.

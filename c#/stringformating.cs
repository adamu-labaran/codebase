// To generate Japanese invoices:
// Nihon no seikyū-sho o seisei suru ni wa:
Console.Write("\n\n\u65e5\u672c\u306e\u8acb\u6c42\u66f8\u3092\u751f\u6210\u3059\u308b\u306b\u306f\uff1a\n\t");
// User command to run an application
Console.WriteLine(@"c:\invoices\app.exe -j");


Console.WriteLine("Generating invoices for customer \"Contoso Corp\" ...\n");
Console.WriteLine("Invoice: 1021\t\tComplete!");
Console.WriteLine("Invoice: 1022\t\tComplete!");
Console.WriteLine("\nOutput Directory:\t");
Console.Write(@"c:\invoices");

// To generate Japanese invoices:
// Nihon no seikyū-sho o seisei suru ni wa:
Console.Write("\n\n\u65e5\u672c\u306e\u8acb\u6c42\u66f8\u3092\u751f\u6210\u3059\u308b\u306b\u306f\uff1a\n\t");
// User command to run an application
Console.WriteLine(@"c:\invoices\app.exe -j");


// string interpolation
string message = greeting + " " + firstName + "!";
string message = $"{greeting} {firstName}!"; //  interpolate

string projectName = "ACME";

string russianMessage = "\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0440\u0443\u0441\u0441\u043a\u0438\u0439 \u0432\u044b\u0432\u043e\u0434";

Console.WriteLine($"{russianMessage}");

string projectName = "ACME";

string russianMessage = "\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0440\u0443\u0441\u0441\u043a\u0438\u0439 \u0432\u044b\u0432\u043e\u0434";

Console.WriteLine("View English output:");
Console.WriteLine($@"   c:\Exercise\{projectName}\data.txt");

Console.WriteLine($"{russianMessage}:");
Console.WriteLine($@"   c:\Exercise\{projectName}\ru-RU\data.txt");

string projectName = "ACME";
string englishLocation = $@"c:\Exercise\{projectName}\data.txt";
Console.WriteLine($"View English output:\n\t\t{englishLocation}\n");

string russianMessage = "\u041f\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u0442\u044c \u0440\u0443\u0441\u0441\u043a\u0438\u0439 \u0432\u044b\u0432\u043e\u0434";
string russianLocation = $@"c:\Exercise\{projectName}\ru-RU\data.txt";
Console.WriteLine($"{russianMessage}:\n\t\t{russianLocation}\n");







Add code to perform division using literal decimal data
To see division working properly, you need to use a data type that supports fractional digits after the decimal point like decimal.

Delete the code from the previous steps and enter the following code into the .NET Editor:

C#

Copy
decimal decimalQuotient = 7.0m / 5;
Console.WriteLine($"Decimal quotient: {decimalQuotient}");

Run the code. You should see the following output:

Output

Copy
Decimal quotient: 1.4
For this to work, the quotient (left of the assignment operator) must be of type decimal and at least one of numbers being divided must also be of type decimal (both numbers can also be a decimal type).

Here are two additional examples that work equally well:

C#

Copy
decimal decimalQuotient = 7 / 5.0m;
decimal decimalQuotient = 7.0m / 5.0m;
However, the following lines of code won't work (or give inaccurate results):

C#

Copy
int decimalQuotient = 7 / 5.0m;
int decimalQuotient = 7.0m / 5;
int decimalQuotient = 7.0m / 5.0m;
decimal decimalQuotient = 7 / 5;
Add code to cast results of integer division
What if you are not working with literal values? In other words, what if you need to divide two variables of type int but do not want the result truncated? In that case, you must perform a data type cast from int to decimal. Casting is one type of data conversion that instructs the compiler to temporarily treat a value as if it were a different data type.

To cast int to decimal, you add the cast operator before the value. You use the name of the data type surrounded by parentheses in front of the value to cast it. In this case, you would add (decimal) before the variables first and second.

Delete the code from the previous steps and enter the following code into the .NET Editor:

C#

Copy
int first = 7;
int second = 5;
decimal quotient = (decimal)first / (decimal)second;
Console.WriteLine(quotient);
Run the code. You should see the following output:

Output

Copy
1.4
 Note

You've seen three uses for the parenthesis operator: method invocation, order of operations and casting.

Write code to determine the remainder after integer division
The modulus operator % tells you the remainder of int division. What you really learn from this is whether one number is divisible by another. This can be useful during long processing operations when looping through hundreds or thousands of data records and you want to provide feedback to the end user after every 100 data records have been processed.

Delete the code from the previous steps and enter the following code into the .NET Editor:

c#

Copy
Console.WriteLine($"Modulus of 200 / 5 : {200 % 5}");
Console.WriteLine($"Modulus of 7 / 5 : {7 % 5}");

Run the code. You should see the following output:

Output

Copy
Modulus of 200 / 5 : 0
Modulus of 7 / 5 : 2
When the modulus is 0, that means the dividend is divisible by the divisor.

Order of operations
As you learned in the previous exercise, you can use the () symbols as the order of operations operators. However, this isn't the only way the order of operations is determined.

In math, PEMDAS is an acronym that helps students remember the order of operations. The order is:

Parentheses (whatever is inside the parenthesis is performed first)
Exponents
Multiplication and Division (from left to right)
Addition and Subtraction (from left to right)
C# follows the same order as PEMDAS except for exponents. While there's no exponent operator in C#, you can use the System.Math.Pow method. The module "Call methods from the .NET Class Library using C#" will feature this method and others.

Write code to exercise C#'s order of operations
Delete the code from the previous steps and enter the following code into the .NET Editor:

C#

Copy
int value1 = 3 + 4 * 5;
int value2 = (3 + 4) * 5;
Console.WriteLine(value1);
Console.WriteLine(value2);
Here you see the difference when performing the same operations in a different order.

Run the code. You should see the following output:

Output

Copy
23
35
Recap
Here's what you've learned so far about mathematical operations in C#:

Use operators like +, -, *, and / to perform basic mathematical operations.
The division of two int values will result in the truncation of any values after the decimal point. To retain values after the decimal point, you need to cast the divisor or dividend (or both) from int into a floating point number like decimal first, then the quotient must be of the same floating point type as well in order to avoid truncation.
Perform a cast operation to temporarily treat a value as if it were a different data type.
Use the % operator to capture the remainder after division.
The order of operations will follow the rules of the acronym PEMDAS.

int value = 1;

value = value + 1;
Console.WriteLine("First increment: " + value);

value += 1;
Console.WriteLine("Second increment: " + value);

value++;
Console.WriteLine("Third increment: " + value);

value = value - 1;
Console.WriteLine("First decrement: " + value);

value -= 1;
Console.WriteLine("Second decrement: " + value);

value--;
Console.WriteLine("Third decrement: " + value);

int value = 1;
value++;
Console.WriteLine("First: " + value);
Console.WriteLine($"Second: {value++}");
Console.WriteLine("Third: " + value);
Console.WriteLine("Fourth: " + (++value));


Complete the challenge to convert Fahrenheit to Celsius
Completed
100 XP
10 minutes
In this challenge, you'll write code that will use a formula to convert a temperature from degrees Fahrenheit to Celsius. You'll print the result in a formatted message to the user.

Challenge: Calculate Celsius given the current temperature in Fahrenheit
Select all of the code in the .NET Editor, and press Delete or Backspace to delete it.

Enter the following code in the .NET Editor:

C#

Copy
int fahrenheit = 94;
To convert temperatures in degrees Fahrenheit to Celsius, first subtract 32, then multiply by five ninths (5 / 9).

Display the result of the temperature conversion in a formatted message

Combine the variables with literal strings passed into a series of Console.WriteLine() commands to form the complete message.

When you're finished, the message should resemble the following output:

Output

Copy
The temperature is 34.444444444444444444444444447 Celsius.
 Note

Admittedly, it is preferred to not see so many values after the decimal point. Ideally the value would be formatted to a single value after the decimal point: 34.4.

Whether you get stuck and need to peek at the solution or you finish successfully, continue to view a solution to this challenge.

int fahrenheit = 94;
decimal celsius = (fahrenheit - 32m) * (5m / 9m);
Console.WriteLine("The temperature is " + celsius + " Celsius.");
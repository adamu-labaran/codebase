/*
    Exercise - Calculate the average of the student's assignment scores
Completed
100 XP
10 minutes
In this exercise, you'll calculate and store the average of the assignment scores from each student. Since you know the number of scored assignments for each student, the average is calculated by dividing the sum of the assignment scores by the number of assignments. To store the averages, you'll be using the Decimal data type.

Create variables to store the average
In this task, you'll create a variable for each student that can be used to store the average score for their graded assignments.

In the .NET Editor, locate the Console.WriteLine() statements that are used to display each student's summed scores.

Create a blank code line above the Console.WriteLine() statements.

On the blank code line that you created, to declare the Decimal variables that will be used for the students current scores, enter the following code:

C#

Copy
decimal sophiaScore;
decimal nicolasScore;
decimal zahirahScore;
decimal jeongScore;

Notice that you're only declaring the decimal variables and not initializing them. You chose the decimal type because you were representing an average grade and want to include a decimal place that wouldn't be available if you used an integer. This way, you can see if a student made a score of 89.9 and bump them up from a B to an A.

In the previous exercise, you initialized the integer variables so that you could immediately use them in your console output. In this case, these decimal variables will be initialized in the next step using calculations with your existing data, starting with Sophia's score.

To assign Sophia's current score in the class to the decimal sophiaScore, update the variable with the following code:

C#

Copy
decimal sophiaScore = sophiaSum / currentAssignments;

To calculate a student's current score for the class, you divide the sum of assignment scores by the total number of assignments. Each student in the class has five assignments, represented by currentAssignments that you initialized during setup.

To assign the rest of the students' scores, enter the following code:

C#

Copy
decimal nicolasScore = nicolasSum / currentAssignments;
decimal zahirahScore = zahirahSum / currentAssignments;
decimal jeongScore = jeongSum / currentAssignments;

Ultimately, you want to display the grades of each student in this application. In the next step, you'll modify the code to display each student's score rather than their assignment sum.

To display each student's current score, replace the sum variables in the display statements with the score variables:

C#

Copy
Console.WriteLine("Sophia: " + sophiaScore);
Console.WriteLine("Nicolas: " + nicolasScore);
Console.WriteLine("Zahirah: " + zahirahScore);
Console.WriteLine("Jeong: " + jeongScore);

Take a minute to consider the incremental approach you're using to develop this application.

Breaking down a problem into smaller pieces is an important skill for developers. Building your code incrementally and checking your work frequently allows you to quickly develop reliable applications. In this case, you're able to repurpose Console.WriteLine() to verify that your calculations are correct as you complete each stage in the process.

To view the values of each student's current grade, select Run.

You should see the following output:

Output

Copy
Sophia: 94
Nicolas: 83
Zahirah: 83
Jeong: 95
Notice that the scores are displayed as integers rather than decimals.

When you want the result of a division calculation to be a decimal value, either the dividend or divisor must be of type decimal (or both). When you use integer variables in the calculation, you need to apply a technique know as casting to "convert" an integer to a decimal.

For the score calculation, you can obtain a decimal result by casting either the sum variable or currentAssignments as a decimal type. In this case, you'll cast the sum as a decimal.

In your division operations, to cast an integer variable as a decimal, update your code as follows:

C#

Copy
decimal sophiaScore = (decimal) sophiaSum / currentAssignments;
decimal nicolasScore = (decimal) nicolasSum / currentAssignments;
decimal zahirahScore = (decimal) zahirahSum / currentAssignments;
decimal jeongScore = (decimal) jeongSum / currentAssignments;
You only need the dividend or divisor to be a decimal type for the division to result in a decimal value. Here, you cast only the sum variable that's used as the dividend.

Review the following grading scale that the teacher uses to assign letter grades:

Output

Copy
97 - 100    A+
93 - 96     A
90 - 92     A-
87 - 89     B+
83 - 86     B
The next step is to include a letter grade for each student based on their total score. Adding the letter grade to the displayed output will be a manual process.

To determine the value of each student's current grade, select Run.

Use the current grade for each student to determine the appropriate letter grade, rounding up or down as necessary.

To append letter grade after each student's numeric score, update your code as follows:

C#

Copy
Console.WriteLine("Sophia: " + sophiaScore + " A");
Console.WriteLine("Nicolas: " + nicolasScore + " B");
Console.WriteLine("Zahirah: " + zahirahScore + " B");
Console.WriteLine("Jeong: " + jeongScore + " A");
Check Your Work
In this task, you'll run the code and verify that the output is correct.

Compare your code to the following:

C#

Copy
int currentAssignments = 5;

int sophia1 = 93;
int sophia2 = 87;
int sophia3 = 98;
int sophia4 = 95;
int sophia5 = 100;

int nicolas1 = 80;
int nicolas2 = 83;
int nicolas3 = 82;
int nicolas4 = 88;
int nicolas5 = 85;

int zahirah1 = 84;
int zahirah2 = 96;
int zahirah3 = 73;
int zahirah4 = 85;
int zahirah5 = 79;

int jeong1 = 90;
int jeong2 = 92;
int jeong3 = 98;
int jeong4 = 100;
int jeong5 = 97;

int sophiaSum = sophia1 + sophia2 + sophia3 + sophia4 + sophia5;
int nicolasSum = nicolas1 + nicolas2 + nicolas3 + nicolas4 + nicolas5;
int zahirahSum = zahirah1 + zahirah2 + zahirah3 + zahirah4 + zahirah5;
int jeongSum = jeong1 + jeong2 + jeong3 + jeong4 + jeong5;

decimal sophiaScore = (decimal) sophiaSum / currentAssignments;
decimal nicolasScore = (decimal) nicolasSum / currentAssignments;
decimal zahirahScore = (decimal) zahirahSum / currentAssignments;
decimal jeongScore = (decimal) jeongSum / currentAssignments;

Console.WriteLine("Sophia: " + sophiaScore + " A");
Console.WriteLine("Nicolas: " + nicolasScore + " B");
Console.WriteLine("Zahirah: " + zahirahScore + " B");
Console.WriteLine("Jeong: " + jeongScore + " A");
To run your code and display the student scores with letter grades, select Run.

To verify that your code is working as expected, compare the output of your application with the following output:

Output

Copy
Sophia: 94.6 A
Nicolas: 83.6 B
Zahirah: 83.4 B
Jeong: 95.4 A
Your code should now be displaying the student scores as a decimal value, and you should see the letter grade that you assigned.

If your code displays different results, you'll need to review your code to find your error and make updates. Run the code again to see if you've fixed the problem. Continue updating and running your code until your code produces the expected results.

 Important

Be sure not to delete any of the code you've written so far. You'll build on this code in the next exercise.

Next unit: Exercise - Format the output using escaped character sequences
*/

int currentAssignments = 5;

int sophia1 = 93;
int sophia2 = 87;
int sophia3 = 98;
int sophia4 = 95;
int sophia5 = 100;

int nicolas1 = 80;
int nicolas2 = 83;
int nicolas3 = 82;
int nicolas4 = 88;
int nicolas5 = 85;

int zahirah1 = 84;
int zahirah2 = 96;
int zahirah3 = 73;
int zahirah4 = 85;
int zahirah5 = 79;

int jeong1 = 90;
int jeong2 = 92;
int jeong3 = 98;
int jeong4 = 100;
int jeong5 = 97;

int sophiaSum = sophia1 + sophia2 + sophia3 + sophia4 + sophia5;
int nicolasSum = nicolas1 + nicolas2 + nicolas3 + nicolas4 + nicolas5;
int zahirahSum = zahirah1 + zahirah2 + zahirah3 + zahirah4 + zahirah5;
int jeongSum = jeong1 + jeong2 + jeong3 + jeong4 + jeong5;

decimal sophiaScore = (decimal) sophiaSum / currentAssignments;
decimal nicolasScore = (decimal) nicolasSum / currentAssignments;
decimal zahirahScore = (decimal) zahirahSum / currentAssignments;
decimal jeongScore = (decimal) jeongSum / currentAssignments;

Console.WriteLine("Sophia: " + sophiaScore + " A");
Console.WriteLine("Nicolas: " + nicolasScore + " B");
Console.WriteLine("Zahirah: " + zahirahScore + " B");
Console.WriteLine("Jeong: " + jeongScore + " A");





/*
    Exercise - Format the output using escaped character sequences
Completed
100 XP
10 minutes
In this exercise, you'll modify the console output from the previous exercise to achieve the reporting format specified by the teacher.

Format the console output
In this task, you'll update your code to apply the finishing touches to the reported output. You'll start by adding a header row that includes the column labels specified by the teacher. After that, you'll use character escape sequences to add extra padding between the columns of information.

In the .NET Editor, locate the Console.WriteLine() statements that are used to display each student's current class score and letter grade.

Create a blank code line above the Console.WriteLine() statements.

On the blank code line that you created, to add a header for the student grades, enter the following code:

C#

Copy
Console.WriteLine("Student Grade\n");
Notice that you're including \n at the end of the text. In the "Perform basic string formatting with C#" module, you learned that the \n escape character sequence will cause a new line to be created. The location of the escape sequence is important. In this case, the \n is at the end of the information that you want to write to the console, so the new line will be added after "Student Grade" is displayed.

To format your output as aligned columns of text, replace the spaces between words with the \t escape sequence as follows:

C#

Copy
Console.WriteLine("Student\tGrade\n");
Console.WriteLine("Sophia:\t" + sophiaScore + "\tA");
Console.WriteLine("Nicolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t" + jeongScore + "\tA");
The \t escape sequence will insert a tab stop between the text items. Adding the tab stops should result in left-aligned columns of information.

To view the results of your updates, select Run.

Compare the output of your application with the following output:


Copy
Student	Grade

Sophia: 94.6    A
Nicolas:    83.6    B
Zahirah:    83.4    B
Jeong:  95.4    A
Notice that despite using a tab instead of a space character, some lines still don't have much whitespace between the student's name and their numeric score.

This difference is due to the way that tab spacing is applied. Tab stop locations are set at four-character intervals, and each tab will advance to the next tab stop location. If you have a string of five characters followed by a tab escape sequence, the escape sequence will advance to the tab stop at the eight-character location, filling the gap with space characters to create whitespace in the output. However, you can advance to the same location if you have a string of seven characters followed by a tab escape sequence. This makes tab escape sequences more noticeable when they occur further from the next tab stop location.

To make the whitespace more noticeable between the first two columns, add another \t after the two shorter student names as follows:

C#

Copy
Console.WriteLine("Student\t\tGrade\n");
Console.WriteLine("Sophia:\t\t" + sophiaScore + "\tA");
Console.WriteLine("Nicolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t\t" + jeongScore + "\tA");
Check Your Work
In this task, you'll run the code and verify that the output is correct.

Compare your code to the following:

C#

Copy
int currentAssignments = 5;

int sophia1 = 93;
int sophia2 = 87;
int sophia3 = 98;
int sophia4 = 95;
int sophia5 = 100;

int nicolas1 = 80;
int nicolas2 = 83;
int nicolas3 = 82;
int nicolas4 = 88;
int nicolas5 = 85;

int zahirah1 = 84;
int zahirah2 = 96;
int zahirah3 = 73;
int zahirah4 = 85;
int zahirah5 = 79;

int jeong1 = 90;
int jeong2 = 92;
int jeong3 = 98;
int jeong4 = 100;
int jeong5 = 97;

int sophiaSum = sophia1 + sophia2 + sophia3 + sophia4 + sophia5;
int nicolasSum = nicolas1 + nicolas2 + nicolas3 + nicolas4 + nicolas5;
int zahirahSum = zahirah1 + zahirah2 + zahirah3 + zahirah4 + zahirah5;
int jeongSum = jeong1 + jeong2 + jeong3 + jeong4 + jeong5;

decimal sophiaScore = (decimal) sophiaSum / currentAssignments;
decimal nicolasScore = (decimal) nicolasSum / currentAssignments;
decimal zahirahScore = (decimal) zahirahSum / currentAssignments;
decimal jeongScore = (decimal) jeongSum / currentAssignments;

Console.WriteLine("Student\t\tGrade\n");
Console.WriteLine("Sophia:\t\t" + sophiaScore + "\tA");
Console.WriteLine("Nicolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t\t" + jeongScore + "\tA");
To run your code and display the formatted output, select Run.

To verify that your code is working as expected, compare the output of your application with the following output:

Output

Copy
Student         Grade

Sophia:         94.6    A
Nicolas:        83.6    B
Zahirah:        83.4    B
Jeong:          95.4    A
If your code displays different results, you'll need to review your code to find your error and make updates. Run the code again to see if you've fixed the problem. Continue updating and running your code until your code produces the expected results.

Next unit: Knowledge check


*/

Console.WriteLine("Student Grade\n");
Console.WriteLine("Student\tGrade\n");
Console.WriteLine("Sophia:\t" + sophiaScore + "\tA");
Console.WriteLine("Nicolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t" + jeongScore + "\tA");

// To make the whitespace more noticeable between the first two columns, add another \t after the two shorter student names as follows:

Console.WriteLine("Student\t\tGrade\n");
Console.WriteLine("Sophia:\t\t" + sophiaScore + "\tA");
Console.WriteLine("Nicolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t\t" + jeongScore + "\tA");

// updated above code with the use of format of '\t'
int currentAssignments = 5;

int sophia1 = 93;
int sophia2 = 87;
int sophia3 = 98;
int sophia4 = 95;
int sophia5 = 100;

int nicolas1 = 80;
int nicolas2 = 83;
int nicolas3 = 82;
int nicolas4 = 88;
int nicolas5 = 85;

int zahirah1 = 84;
int zahirah2 = 96;
int zahirah3 = 73;
int zahirah4 = 85;
int zahirah5 = 79;

int jeong1 = 90;
int jeong2 = 92;
int jeong3 = 98;
int jeong4 = 100;
int jeong5 = 97;

int sophiaSum = sophia1 + sophia2 + sophia3 + sophia4 + sophia5;
int nicolasSum = nicolas1 + nicolas2 + nicolas3 + nicolas4 + nicolas5;
int zahirahSum = zahirah1 + zahirah2 + zahirah3 + zahirah4 + zahirah5;
int jeongSum = jeong1 + jeong2 + jeong3 + jeong4 + jeong5;

decimal sophiaScore = (decimal) sophiaSum / currentAssignments;
decimal nicolasScore = (decimal) nicolasSum / currentAssignments;
decimal zahirahScore = (decimal) zahirahSum / currentAssignments;
decimal jeongScore = (decimal) jeongSum / currentAssignments;

Console.WriteLine("Student\t\tGrade\n");
Console.WriteLine("Sophia:\t\t" + sophiaScore + "\tA");
Console.WriteLine("Nicolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t\t" + jeongScore + "\tA");

int currentAssignments = 5;

int sophia1 = 93;
int sophia2 = 87;
int sophia3 = 98;
int sophia4 = 95;
int sophia5 = 100;

int nicolas1 = 80;
int nicolas2 = 83;
int nicolas3 = 82;
int nicolas4 = 88;
int nicolas5 = 85;

int zahirah1 = 84;
int zahirah2 = 96;
int zahirah3 = 73;
int zahirah4 = 85;
int zahirah5 = 79;

int jeong1 = 90;
int jeong2 = 92;
int jeong3 = 98;
int jeong4 = 100;
int jeong5 = 97;

int sophiaSum = sophia1 + sophia2 + sophia3 + sophia4 + sophia5;
int nicolasSum = nicolas1 + nicolas2 + nicolas3 + nicolas4 + nicolas5;
int zahirahSum = zahirah1 + zahirah2 + zahirah3 + zahirah4 + zahirah5;
int jeongSum = jeong1 + jeong2 + jeong3 + jeong4 + jeong5;

decimal sophiaScore = (decimal) sophiaSum / currentAssignments;
decimal nicolasScore = (decimal) nicolasSum / currentAssignments;
decimal zahirahScore = (decimal) zahirahSum / currentAssignments;
decimal jeongScore = (decimal) jeongSum / currentAssignments;

Console.WriteLine("Student\t\tGrade\n");
Console.WriteLine("Sophia:\t\t" + sophiaScore + "\tA");
Console.WriteLine("Nicolas:\t" + nicolasScore + "\tB");
Console.WriteLine("Zahirah:\t" + zahirahScore + "\tB");
Console.WriteLine("Jeong:\t\t" + jeongScore + "\tA");

/*
    1. What does the following code accomplish? var value = (int) dividend / (int) divisor; 

Casts the operands to truncate the result.

Declares an explicitly typed int variable.

Casts the operands to prevent truncating the result.
2. What does the $ symbol do when used in a string in C#? 

It allows you to use string interpolation to include variables in the string.

It indicates that the string is a regular expression.

It indicates that the string is a verbatim string literal.
3. What is wrong with the following code? int sophiaSum; Console.WriteLine("Sophia: " + sophiaSum); 

sophiaSum isn't initialized before use.

sophiaSum isn't implicitly typed to a string.

sophiaSum should use the var keyword.
*/

/*
    Knowledge check
Completed
200 XP
3 minutes
Check your knowledge

1. What does the following code accomplish? var value = (int) dividend / (int) divisor; 

Casts the operands to truncate the result.
Correct. The operands are casted to the int data type that will create an implicitly typed int result.


Declares an explicitly typed int variable.

Casts the operands to prevent truncating the result.
2. What does the $ symbol do when used in a string in C#? 

It allows you to use string interpolation to include variables in the string.
Correct! The $ symbol allows you to use string interpolation to include variables in the string.


It indicates that the string is a regular expression.

It indicates that the string is a verbatim string literal.
3. What is wrong with the following code? int sophiaSum; Console.WriteLine("Sophia: " + sophiaSum); 

sophiaSum isn't initialized before use.
Correct. You must set a variable to a value before you can reference the value from the variable.


sophiaSum isn't implicitly typed to a string.

sophiaSum should use the var keyword.

*/

/*
    Introduction
Completed
100 XP
5 minutes
Developers perform some tasks nearly every day. Tasks including declaring string and numeric variables, assigning and extracting values, and performing calculations are not only routine, but essential. Equally important is the task of communicating results to the application user. Mastering the ability to apply these skills to solve a given problem is something that every developer must learn to do.

Suppose you're a teacher's assistant at a university. You're tasked with developing an application that helps calculate students' grade point average. The application uses the students' grades and credit hours taken to calculate their overall GPA. You're also provided a required format for reporting the students' GPA.

This module will guide you through the steps required to develop your GPA Calculator application. Your code will declare and assign values to variables based on course information, perform various numeric calculations, and format and display the results. Calculations include determining the sum of the grade points earned and total credit hours. To display the results in the required format, you'll need to manipulate a decimal value to display a total of three digits. You'll also use Console.WriteLine() methods as well character escape sequences that help to format your results.

By the end of this module, you'll be able to write code that uses various variable types, performs numeric calculations, and displays formatted data for the user.

Learning objectives
In this module, you’ll practice how to:

Work with variables to store and retrieve data
Perform basic math operations
Format strings to present results
Prerequisites
Beginner level experience with a .NET editor
Beginner level experience with basic C# syntax rules
Beginner level experience with performing math operations on variables
Beginner level experience with creating literal values and declare variables of basic data types like string, int, and decimal
Beginner level experience with string concatenation and string interpolation
Next unit: Prepare for guided project
*/

/*
    Prepare for guided project
Completed
100 XP
5 minutes
You'll be using the .NET Editor as your code development environment. You'll be writing code that uses string and numeric variables, performs calculations, then formats and displays the results to a console.

Project overview
You're developing a Student GPA Calculator that will help calculate students' overall Grade Point Average. The parameters for your application are:

You're given the student's name and class information.
Each class has a name, the student's grade, and the number of credit hours for that class.
Your application needs to perform basic math operations to calculate the GPA for the given student.
Your application needs to output/display the student’s name, class information, and GPA.
To calculate the GPA:

Multiply the grade value for a course by the number of credit hours for that course.
Do this for each course, then add these results together.
Divide the resulting sum by the total number of credit hours.
You're provided with the following sample of a student's course information and GPA:

Output

Copy
Student: Sophia Johnson

Course          Grade   Credit Hours	
English 101         4       3
Algebra 101         3       3
Biology 101         3       4
Computer Science I  3       4
Psychology 101      4       3

Final GPA:          3.35
Setup
Use the following steps to prepare for the Guided project exercises:

Open the .NET Editor coding environment.

Copy and paste the following code into the .NET Editor. These values represent the student's name and course details.

C#

Copy
string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;
Now you're ready to begin the Guided project exercises. Good luck!


*/

string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;


/*
    Create variables to store the grade values
In this task, you'll identify the numeric equivalents for the student's earned letter grade. Then you'll declare variables to store the numeric grade value for each class. The numeric equivalents are represented as whole numbers, so you'll be using the Integer data type to store the values.

Ensure that you have the .NET Editor open, and that you have the variables prepared with the student's name, course names, and credit hours.

In the Prepare unit for this Guided project module, the Setup instructions have you copy student course information into the editor. If necessary, go back and complete the Setup instructions.

Review the following letter grade numeric equivalent values A = 4 grade points B = 3 grade points

Scroll down to the bottom of your code and create a new blank line.

To declare an Integer variable for each numeric grade value, enter the following code:

C#

Copy
int gradeA = 4;
int gradeB = 3;

Notice fixed values are used to represent the numeric grades. This technique helps make your code easy to understand and help to prevent typos if you need to enter different grades repeatedly. Values for grades C, D, and F are omitted for now since they're unused.

Review the student's grades for each course:


Copy
Course			    Grade		
English 101		     A
Algebra 101		     B
Biology 101		     B
Computer Science I	 B
Psychology 101	     A
You'll be using this information to create variables that will store the numeric grade values for each course.

To create variables that will store the grades for each course, enter the following code:

C#

Copy
int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

To display the course names along with the numeric grade, enter the following code:

C#

Copy
Console.WriteLine($"{course1Name} {course1Grade}");
Console.WriteLine($"{course2Name} {course2Grade}");
Console.WriteLine($"{course3Name} {course3Grade}");
Console.WriteLine($"{course4Name} {course4Grade}");
Console.WriteLine($"{course5Name} {course5Grade}");
In the .NET Editor, to run your code, select the green Run button.

Your application's output should match the following output:


Copy
English 101 4
Algebra 101 3
Biology 101 3
Computer Science I 3
Psychology 101 4
If your output doesn't match, be sure to check your variable names.

Take a moment to consider the current output and the final output of your application.

In the final output of your application, you want to display the class name, grade, and credit hours. This is a good time to add the credit hours into your print statements.

To add the credit hours for each class to the print statements, update your code as follows:

C#

Copy
Console.WriteLine($"{course1Name} {course1Grade} {course1Credit}");
Console.WriteLine($"{course2Name} {course2Grade} {course2Credit}");
Console.WriteLine($"{course3Name} {course3Grade} {course3Credit}");
Console.WriteLine($"{course4Name} {course4Grade} {course4Credit}");
Console.WriteLine($"{course5Name} {course5Grade} {course5Credit}");
Check your work
In this task, you'll run the code and verify the output is correct.

In the .NET Editor, select Run.

Review your output and verify that the course names, grades, and credit hours are all correct:

Output

Copy
English 101 4 3
Algebra 101 3 3
Biology 101 3 4
Computer Science I 3 4
Psychology 101 4 3
If your code displays different results, you'll need to review your code to find your error and make updates. Run the code again to see if you've fixed the problem. Continue updating and running your code until your code produces the expected results.

 Important

Be sure not to delete any of the code you've written so far. You'll build on this code in the next exercise.

Next unit: Exercise - Calculate the sums of credit hours and grade points
*/

// Review the following letter grade numeric equivalent values A = 4 grade points B = 3 grade points
int gradeA = 4;
int gradeB = 3;

/*
    now fix the problems like this
    Course			    Grade		
English 101		     A
Algebra 101		     B
Biology 101		     B
Computer Science I	 B
Psychology 101	     A
*/

// To create variables that will store the grades for each course, enter the following code:
int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

// To display the course names along with the numeric grade, enter the following code:
Console.WriteLine($"{course1Name} {course1Grade}");
Console.WriteLine($"{course2Name} {course2Grade}");
Console.WriteLine($"{course3Name} {course3Grade}");
Console.WriteLine($"{course4Name} {course4Grade}");
Console.WriteLine($"{course5Name} {course5Grade}");

// To add the credit hours for each class to the print statements, update your code as follows:
Console.WriteLine($"{course1Name} {course1Grade} {course1Credit}");
Console.WriteLine($"{course2Name} {course2Grade} {course2Credit}");
Console.WriteLine($"{course3Name} {course3Grade} {course3Credit}");
Console.WriteLine($"{course4Name} {course4Grade} {course4Credit}");
Console.WriteLine($"{course5Name} {course5Grade} {course5Credit}");

/*
    Exercise - Calculate the sums of credit hours and grade points
Completed
100 XP
10 minutes
In this exercise, you'll calculate and store the total number of credit hours and the total grade points earned for each course. These values will later be used to calculate the GPA. Since both the credit hours and grade values are represented as whole numbers, you'll store the sums using the Integer data type.

Create variables to store the average
Recall that to calculate a student's GPA, you need the total number of credit hours, and the total number of grade points earned. The grade points earned for a course is equal to the product of the number of credit hours for that course and numeric grade value earned. For example:


Copy
Course          Credit  Credit Hours    Grade Points
English 101     4		3               12
In this task, you'll create the variables to store values that are needed to calculate the GPA. You'll create a variable to store the sum of the total credit hours for each course, and another variable to store the sum of the grade points the student earned for each course.

In the .NET Editor, locate the Console.WriteLine() statements that are used to display the course information.

Create a blank code line above the Console.WriteLine() statements.

On the blank code line that you created, to create a variable that will store the total number of credit hours, enter the following code:

C#

Copy
int totalCreditHours = 0;

Notice that the total is initialized to 0. This initialization allows you to increment the sum while keeping your code organized.

To increment the sum to represent the total number of credit hours, enter the following code:

C#

Copy
totalCreditHours += course1Credit;
totalCreditHours += course2Credit;
totalCreditHours += course3Credit;
totalCreditHours += course4Credit;
totalCreditHours += course5Credit;

Recall that the += operator is shorthand notation to add a value to a variable. These lines of code have the same result as adding each courseCredit variable on one line, for example:

C#

Copy
totalCreditHours = course1Credit + course2Credit + course3Credit + course4Credit + course5Credit;
To create a variable that will store the total number of grade points earned for each course, enter the following code:

C#

Copy
int totalGradePoints = 0;

To increment the sum by the grade points earned for the first course, enter the following code:

C#

Copy
totalGradePoints += course1Credit * course1Grade;

Recall that the grade points earned for a course is equal to the course credit hours multiplied by the earned grade. In this line of code, you use the compound assignment operator to add the product of course1Credit * course1Grade to totalGradePoints.

To increment the sum by the grade points earned for the remainder of the courses, enter the following code:

C#

Copy
totalGradePoints += course2Credit * course2Grade;
totalGradePoints += course3Credit * course3Grade;
totalGradePoints += course4Credit * course4Grade;
totalGradePoints += course5Credit * course5Grade;

Take a minute to review your code.

Notice that the code you wrote breaks down the problem into manageable pieces rather than trying to calculate the GPA in one large operation. First, you initialized and calculated the value of totalCreditHours. Then you initialized and calculated the value of totalGradePoints. Afterwards, you'll use these values in your final calculation.

Now that your code is calculating a value for totalGradePoints, let's verify that your calculations are correct before continuing. It's important to stop and check your work periodically. Checking your work early in the development process will make it easier to locate and fix any errors in your code.

To display the values of totalGradePoints and totalCreditHours, enter the following code:

C#

Copy
Console.WriteLine($"{totalGradePoints} {totalCreditHours}");
You'll remove this WriteLine() statement later since it isn't needed in the final output.

Check Your Work
In this task, you'll run the code and verify that the output is correct.

Check that your code is similar to the following:

C#

Copy
string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;

int gradeA = 4;
int gradeB = 3;

int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

int totalCreditHours = 0;
totalCreditHours += course1Credit;
totalCreditHours += course2Credit;
totalCreditHours += course3Credit;
totalCreditHours += course4Credit;
totalCreditHours += course5Credit;

int totalGradePoints = 0;
totalGradePoints += course1Credit * course1Grade;
totalGradePoints += course2Credit * course2Grade;
totalGradePoints += course3Credit * course3Grade;
totalGradePoints += course4Credit * course4Grade;
totalGradePoints += course5Credit * course5Grade;

Console.WriteLine($"{totalGradePoints} {totalCreditHours}");

Console.WriteLine($"{course1Name} {course1Grade} {course1Credit}");
Console.WriteLine($"{course2Name} {course2Grade} {course2Credit}");
Console.WriteLine($"{course3Name} {course3Grade} {course3Credit}");
Console.WriteLine($"{course4Name} {course4Grade} {course4Credit}");
Console.WriteLine($"{course5Name} {course5Grade} {course5Credit}");
To run your code and display the current values of totalGradePoints and totalCreditHours, select Run.

Verify that your application's output matches the following output:

Output

Copy
57 17
English 101 4 3
Algebra 101 3 3
Biology 101 3 4
Computer Science I 3 4
Psychology 101 4 3
If your code displays different results, you'll need to review your code to find your error and make updates. Run the code again to see if you've fixed the problem. Continue updating and running your code until your code produces the expected results.

 Important

Be sure not to delete any of the code you've written so far. You'll build on this code in the next exercise.


*/

/*
    Course          Credit  Credit Hours    Grade Points
    English 101     4		3               12
*/

int totalCreditHours = 0;

/*
    Notice that the total is initialized to 0. This initialization allows you to increment the sum while keeping your code organized.

    To increment the sum to represent the total number of credit hours, enter the following code:
*/
totalCreditHours += course1Credit;
totalCreditHours += course2Credit;
totalCreditHours += course3Credit;
totalCreditHours += course4Credit;
totalCreditHours += course5Credit;

totalCreditHours = course1Credit + course2Credit + course3Credit + course4Credit + course5Credit;

// To create a variable that will store the total number of grade points earned for each course, enter the following code:
int totalGradePoints = 0;
totalGradePoints += course1Credit * course1Grade;


// To increment the sum by the grade points earned for the remainder of the courses, enter the following code:
totalGradePoints += course2Credit * course2Grade;
totalGradePoints += course3Credit * course3Grade;
totalGradePoints += course4Credit * course4Grade;
totalGradePoints += course5Credit * course5Grade;

Console.WriteLine($"{totalGradePoints} {totalCreditHours}");


// Check that your code is similar to the following:
string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;

int gradeA = 4;
int gradeB = 3;

int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

int totalCreditHours = 0;
totalCreditHours += course1Credit;
totalCreditHours += course2Credit;
totalCreditHours += course3Credit;
totalCreditHours += course4Credit;
totalCreditHours += course5Credit;

int totalGradePoints = 0;
totalGradePoints += course1Credit * course1Grade;
totalGradePoints += course2Credit * course2Grade;
totalGradePoints += course3Credit * course3Grade;
totalGradePoints += course4Credit * course4Grade;
totalGradePoints += course5Credit * course5Grade;

Console.WriteLine($"{totalGradePoints} {totalCreditHours}");

Console.WriteLine($"{course1Name} {course1Grade} {course1Credit}");
Console.WriteLine($"{course2Name} {course2Grade} {course2Credit}");
Console.WriteLine($"{course3Name} {course3Grade} {course3Credit}");
Console.WriteLine($"{course4Name} {course4Grade} {course4Credit}");
Console.WriteLine($"{course5Name} {course5Grade} {course5Credit}");


/*
    Exercise - Format the decimal output
Completed
100 XP
10 minutes
In this exercise, you'll calculate the final GPA and modify the console output to achieve the desired reporting format. The GPA is equal to the sum of the total grade points divided by the sum of the total credit hours.

Calculate the final GPA
In the .NET Editor, locate the Console.WriteLine() statements that are used to display the course information.

Remove the following code from the previous exercise:

C#

Copy
Console.WriteLine($"{totalGradePoints} {totalCreditHours}");
Since you've verified your values are correct, this line is no longer needed.

Create a blank code line above the Console.WriteLine() statements.

On the blank code line that you created, to initialize a variable that will store the final GPA, enter the following code:

C#

Copy
decimal gradePointAverage = totalGradePoints/totalCreditHours;

Take a moment to consider the data types you're dividing.

When you want the result of a division calculation to be a decimal value, either the dividend or divisor must be of type decimal (or both). When you use integer variables in the calculation, you need to use the cast operator to temporarily convert an integer to a decimal.

To retrieve a decimal value from the division, update your code as follows:

C#

Copy
decimal gradePointAverage = (decimal) totalGradePoints/totalCreditHours;

Navigate to the last Console.WriteLine() statement and create a new blank code line after the last statement.

To display the final GPA, enter the following code:

C#

Copy
Console.WriteLine($"Final GPA: {gradePointAverage}");
To view the results, select Run.

Compare your application's output with the following output:


Copy
English 101 4 3
Algebra 101 3 3
Biology 101 3 4
Computer Science I 3 4
Psychology 101 4 3
Final GPA: 3.3529411764705882352941176471
Format the decimal output
You might have noticed that decimal result contains many more digits than a standard GPA. In this task, you'll manipulate the decimal GPA value so that only three digits are displayed.

Ultimately, you want to display the first digit of the GPA, a decimal point, followed by the first two digits after the decimal. You can achieve this format by using variables to store the leading and trailing digits respectively, and then printing them together using Console.WriteLine(). You can use the math operations you learned to extract the leading and trailing digits.

 Note

As you continue your developer journey, you'll discover built-in operations that can automatically apply formatting to your data. For now, this is a great opportunity to solidify what you've learned so far.

Navigate to the top of the Console.WriteLine() statements.

Create a blank code line above the Console.WriteLine() statements.

On the blank code line that you created, to initialize a variable that will store the leading digit of the GPA, enter the following code:

C#

Copy
int leadingDigit = (int) gradePointAverage;

Notice that to extract the leading digit from the decimal, you're casting it to an integer value. This is a simple and reliable method because casting a fractional value will never round up the result. Meaning if the GPA is 2.99, casting the decimal value to an int will result in 2.

To initialize a variable that will store the first two digits after the decimal, enter the following code:

C#

Copy
int firstDigit = (int) (gradePointAverage * 10) % 10;
In the first half of this operation, you move the decimal one place to the right and cast it to an integer. In the second half, you use the remainder, or modulo, operator to get the remainder of division by 10, which isolates the last digit in the integer. Here's an example:

Suppose gradePointAverage = 2.994573 Then, performing the operation on these values would result in the following steps:

C#

Copy
int firstDigit = (int) (2.994573 * 10) % 10;
int firstDigit = 29 % 10;
int firstDigit = 9;
And the resulting value of firstDigit is 9.

Next, you'll apply the same operation to retrieve the second digit.

On a new blank code line, enter the following code:

C#

Copy
int secondDigit = (int) (gradePointAverage * 100 ) % 10;
In this line, you move the decimal two places and use the modulo operator to retrieve the last digit.

To correct the final GPA output, update the last Console.WriteLine() statement as follows:

C#

Copy
Console.WriteLine($"Final GPA: {leadingDigit}.{firstDigit}{secondDigit}");
Check Your Work
In this task, you'll run the code and verify that the output is correct.

Check that your code is similar to the following:

C#

Copy
string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;

int gradeA = 4;
int gradeB = 3;

int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

int totalCreditHours = 0;
totalCreditHours += course1Credit;
totalCreditHours += course2Credit;
totalCreditHours += course3Credit;
totalCreditHours += course4Credit;
totalCreditHours += course5Credit;

int totalGradePoints = 0;
totalGradePoints += course1Credit * course1Grade;
totalGradePoints += course2Credit * course2Grade;
totalGradePoints += course3Credit * course3Grade;
totalGradePoints += course4Credit * course4Grade;
totalGradePoints += course5Credit * course5Grade;

decimal gradePointAverage = (decimal) totalGradePoints/totalCreditHours;

int leadingDigit = (int) gradePointAverage;
int firstDigit = (int) (gradePointAverage * 10 ) % 10;
int secondDigit = (int) (gradePointAverage * 100 ) % 10;

Console.WriteLine($"{course1Name} {course1Grade} {course1Credit}");
Console.WriteLine($"{course2Name} {course2Grade} {course2Credit}");
Console.WriteLine($"{course3Name} {course3Grade} {course3Credit}");
Console.WriteLine($"{course4Name} {course4Grade} {course4Credit}");
Console.WriteLine($"{course5Name} {course5Grade} {course5Credit}");

Console.WriteLine($"Final GPA: {leadingDigit}.{firstDigit}{secondDigit}");
To run your code and display the formatted output, select Run.

To verify that your code is working as expected, compare the output of your application with the following output:

Output

Copy
English 101 4 3
Algebra 101 3 3
Biology 101 3 4
Computer Science I 3 4
Psychology 101 4 3
Final GPA: 3.35
If your code displays different results, you'll need to review your code to find your error and make updates. Run the code again to see if you've fixed the problem. Continue updating and running your code until your code produces the expected results.

 Important

Be sure not to delete any of the code you've written so far. You'll build on this code in the next exercise.

Next unit: Exercise - Format the output using escaped character sequences
*/

// On the blank code line that you created, to initialize a variable that will store the final GPA, enter the following code:
decimal gradePointAverage = totalGradePoints/totalCreditHours;


// To retrieve a decimal value from the division, update your code as follows:
decimal gradePointAverage = (decimal) totalGradePoints/totalCreditHours;


// To display the final GPA, enter the following code:
Console.WriteLine($"Final GPA: {gradePointAverage}");


// format the code
int leadingDigit = (int) gradePointAverage;

// To initialize a variable that will store the first two digits after the decimal, enter the following code:
int firstDigit = (int) (gradePointAverage * 10) % 10;

int firstDigit = (int) (2.994573 * 10) % 10;
int firstDigit = 29 % 10;
int firstDigit = 9;

int secondDigit = (int) (gradePointAverage * 100 ) % 10;

Console.WriteLine($"Final GPA: {leadingDigit}.{firstDigit}{secondDigit}");


string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;

int gradeA = 4;
int gradeB = 3;

int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

int totalCreditHours = 0;
totalCreditHours += course1Credit;
totalCreditHours += course2Credit;
totalCreditHours += course3Credit;
totalCreditHours += course4Credit;
totalCreditHours += course5Credit;

int totalGradePoints = 0;
totalGradePoints += course1Credit * course1Grade;
totalGradePoints += course2Credit * course2Grade;
totalGradePoints += course3Credit * course3Grade;
totalGradePoints += course4Credit * course4Grade;
totalGradePoints += course5Credit * course5Grade;

decimal gradePointAverage = (decimal) totalGradePoints/totalCreditHours;

int leadingDigit = (int) gradePointAverage;
int firstDigit = (int) (gradePointAverage * 10 ) % 10;
int secondDigit = (int) (gradePointAverage * 100 ) % 10;

Console.WriteLine($"{course1Name} {course1Grade} {course1Credit}");
Console.WriteLine($"{course2Name} {course2Grade} {course2Credit}");
Console.WriteLine($"{course3Name} {course3Grade} {course3Credit}");
Console.WriteLine($"{course4Name} {course4Grade} {course4Credit}");
Console.WriteLine($"{course5Name} {course5Grade} {course5Credit}");

Console.WriteLine($"Final GPA: {leadingDigit}.{firstDigit}{secondDigit}");

/*
    Format the console output
In this task, you'll update your code to apply the finishing touches to the reported output. You'll start by including the student's name and adding a header row that includes the column labels. After that, you'll use character escape sequences to add extra padding between the columns of information.

In the .NET Editor, locate the Console.WriteLine() statements that are used to display the student's course information.

Create a blank code line above the Console.WriteLine() statements.

On the blank code line that you created, to add the student's name, enter the following code:

C#

Copy
Console.WriteLine($"Student: {studentName}\n");

Notice that you're including \n at the end of the text. In the "Perform basic string formatting with C#" module, you learned that the \n escape character sequence will cause a new line to be created. The location of the escape sequence is important. In this case, the \n is at the end of the information that you want to write to the console, so the new line will be added after "Student Name" is displayed.

Create a blank code line after the previous Console.WriteLine() statement.

On the blank code line that you created, to add a header for course information, enter the following code:

C#

Copy
Console.WriteLine("Course\t\t\t\tGrade\tCredit Hours");

Notice you're adding four tabs after the course name. The extra tab stops will allow extra space for longer course names.

To format your output as aligned columns of text, replace the spaces between words with the \t escape sequence as follows:

C#

Copy
Console.WriteLine($"{course1Name}\t\t\t{course1Grade}\t\t{course1Credit}");
Console.WriteLine($"{course2Name}\t\t\t{course2Grade}\t\t{course2Credit}");
Console.WriteLine($"{course3Name}\t\t\t{course3Grade}\t\t{course3Credit}");
Console.WriteLine($"{course4Name}\t{course4Grade}\t\t{course4Credit}");
Console.WriteLine($"{course5Name}\t\t{course5Grade}\t\t{course5Credit}");

The \t escape sequence will insert a tab stop between the text items. These tab stops should result in left-aligned columns of information.

Notice that you reduce the number of tabs for course4Name and course5Name. This difference is because those course names are longer than the others. In the previous step, you added extra tabs after the course name column to keep spacing consistent for both long and short course names.

To add padding to the final GPA result output, update the code as follows:

C#

Copy
Console.WriteLine($"\nFinal GPA:\t\t\t {leadingDigit}.{firstDigit}{secondDigit}");

Check Your Work
In this task, you'll run the code and verify that the output is correct.

Check that your code is similar to the following:

C#

Copy
string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;

int gradeA = 4;
int gradeB = 3;

int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

int totalCreditHours = 0;
totalCreditHours += course1Credit;
totalCreditHours += course2Credit;
totalCreditHours += course3Credit;
totalCreditHours += course4Credit;
totalCreditHours += course5Credit;

int totalGradePoints = 0;
totalGradePoints += course1Credit * course1Grade;
totalGradePoints += course2Credit * course2Grade;
totalGradePoints += course3Credit * course3Grade;
totalGradePoints += course4Credit * course4Grade;
totalGradePoints += course5Credit * course5Grade;

decimal gradePointAverage = (decimal) totalGradePoints/totalCreditHours;

int leadingDigit = (int) gradePointAverage;
int firstDigit = (int) (gradePointAverage * 10 ) % 10;
int secondDigit = (int) (gradePointAverage * 100 ) % 10;

Console.WriteLine($"Student: {studentName}\n");
Console.WriteLine("Course\t\t\t\tGrade\tCredit Hours");

Console.WriteLine($"{course1Name}\t\t\t{course1Grade}\t\t{course1Credit}");
Console.WriteLine($"{course2Name}\t\t\t{course2Grade}\t\t{course2Credit}");
Console.WriteLine($"{course3Name}\t\t\t{course3Grade}\t\t{course3Credit}");
Console.WriteLine($"{course4Name}\t{course4Grade}\t\t{course4Credit}");
Console.WriteLine($"{course5Name}\t\t{course5Grade}\t\t{course5Credit}");

Console.WriteLine($"\nFinal GPA:\t\t\t {leadingDigit}.{firstDigit}{secondDigit}");
To run your code and display the formatted output, select Run.

To verify that your code is working as expected, compare the output of your application with the following output:

Output

Copy
Student: Sophia Johnson

Course              Grade   Credit Hours	
English 101         4       3
Algebra 101         3       3
Biology 101         3       4
Computer Science I  3       4
Psychology 101      4       3

Final GPA:          3.35
If your code displays different results, you'll need to review your code to find your error and make updates. Run the code again to see if you've fixed the problem. Continue updating and running your code until your code produces the expected results.


*/

// to add a header for course information, enter the following code:
Console.WriteLine("Course\t\t\t\tGrade\tCredit Hours");

// To format your output as aligned columns of text, replace the spaces between words with the \t escape sequence as follows:
Console.WriteLine($"{course1Name}\t\t\t{course1Grade}\t\t{course1Credit}");
Console.WriteLine($"{course2Name}\t\t\t{course2Grade}\t\t{course2Credit}");
Console.WriteLine($"{course3Name}\t\t\t{course3Grade}\t\t{course3Credit}");
Console.WriteLine($"{course4Name}\t{course4Grade}\t\t{course4Credit}");
Console.WriteLine($"{course5Name}\t\t{course5Grade}\t\t{course5Credit}");

// To add padding to the final GPA result output, update the code as follows
Console.WriteLine($"\nFinal GPA:\t\t\t {leadingDigit}.{firstDigit}{secondDigit}");

string studentName = "Sophia Johnson";
string course1Name = "English 101";
string course2Name = "Algebra 101";
string course3Name = "Biology 101";
string course4Name = "Computer Science I";
string course5Name = "Psychology 101";

int course1Credit = 3;
int course2Credit = 3;
int course3Credit = 4;
int course4Credit = 4;
int course5Credit = 3;

int gradeA = 4;
int gradeB = 3;

int course1Grade = gradeA;
int course2Grade = gradeB;
int course3Grade = gradeB;
int course4Grade = gradeB;
int course5Grade = gradeA;

int totalCreditHours = 0;
totalCreditHours += course1Credit;
totalCreditHours += course2Credit;
totalCreditHours += course3Credit;
totalCreditHours += course4Credit;
totalCreditHours += course5Credit;

int totalGradePoints = 0;
totalGradePoints += course1Credit * course1Grade;
totalGradePoints += course2Credit * course2Grade;
totalGradePoints += course3Credit * course3Grade;
totalGradePoints += course4Credit * course4Grade;
totalGradePoints += course5Credit * course5Grade;

decimal gradePointAverage = (decimal) totalGradePoints/totalCreditHours;

int leadingDigit = (int) gradePointAverage;
int firstDigit = (int) (gradePointAverage * 10 ) % 10;
int secondDigit = (int) (gradePointAverage * 100 ) % 10;

Console.WriteLine($"Student: {studentName}\n");
Console.WriteLine("Course\t\t\t\tGrade\tCredit Hours");

Console.WriteLine($"{course1Name}\t\t\t{course1Grade}\t\t{course1Credit}");
Console.WriteLine($"{course2Name}\t\t\t{course2Grade}\t\t{course2Credit}");
Console.WriteLine($"{course3Name}\t\t\t{course3Grade}\t\t{course3Credit}");
Console.WriteLine($"{course4Name}\t{course4Grade}\t\t{course4Credit}");
Console.WriteLine($"{course5Name}\t\t{course5Grade}\t\t{course5Credit}");

Console.WriteLine($"\nFinal GPA:\t\t\t {leadingDigit}.{firstDigit}{secondDigit}");

/*
    Check your knowledge

1. Suppose decimal gradePointAverage = 3.99872831m;. What is the value of (int) gradePointAverage? 

3.99

4

3
Correct! The result is 3 because when you cast a decimal to an int, the decimal is truncated without rounding.

2. In the following code decimal x = 7 / 5; why does x = 1? 

Using the decimal data type truncates the fraction.

Dividing two integers performs integer division.
Correct! Performing integer division will yield an integer result.


This line of code has an error.
*/

// See https://aka.ms/new-console-template for more information
// https://learn.microsoft.com/en-us/training/modules/csharp-if-elseif-else/3-exercise-elseif-else
// how to create a new .Net project
// dotnet new console -o ./CsharpProjects/TestProject
Random dice = new Random();

int roll1 = dice.Next(1, 7);
int roll2 = dice.Next(1, 7);
int roll3 = dice.Next(1, 7);

int total = roll1 + roll2 + roll3;


// creating doubles game feature
if((roll1 == roll2) || (roll2 == roll3) || (roll1 == roll3)){
    Console.WriteLine("you rolled  doubles! +2 bonus to total!");
    total += 2;
}

// working with tripple game
if ((roll1 == roll2) && (roll2 == roll3)){
    Console.WriteLine("You rolled triples! +6 bonus to total!");
    total += 6;
}

Console.WriteLine($"Dice roll: {roll1} + {roll2} + {roll3} = {total}");

if (total >= 15)
{
    Console.WriteLine("You win!");
} 
else
{
    Console.WriteLine("sorry, you lose");
}


// using nested if statement
Console.WriteLine($"Dice roll: {roll1} + {roll2} + {roll3} = {total}");

if ((roll1 == roll2) || (roll2 == roll3) || (roll1 == roll3))
{
    if ((roll1 == roll2) && (roll2 == roll3))
    {
        Console.WriteLine("You rolled triples!  +6 bonus to total!");
        total += 6;
    }
    else
    {
        Console.WriteLine("You rolled doubles!  +2 bonus to total!");
        total += 2;
    }
}

if (total >= 15)
{
    Console.WriteLine("You win!");
}
else 
{
    Console.WriteLine("Sorry, you lose.");
}


// testing for boolean result
string msg = "The quick brown fox jumps over the lazy dog.";
bool result = msg.Contains("dog");
Console.WriteLine(result);

if(msg.Contains("fox")){
    Console.WriteLine("What does the fox say?");
}
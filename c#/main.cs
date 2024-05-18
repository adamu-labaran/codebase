// To compile a build of your application: dotnet build
// To run your application: dotnet run
using System;
using System.Drawing;
using System.Drawing.Printing;

class Program
{
    static void Main(string[] args)
    {
        // Create a PrintDocument object
        PrintDocument pd = new PrintDocument();

        // Set up event handlers for printing
        pd.PrintPage += new PrintPageEventHandler(PrintPageHandler);

        // Start printing
        pd.Print();
    }

    // Event handler for printing each page
    private static void PrintPageHandler(object sender, PrintPageEventArgs e)
    {
        // Create a graphics object from the PrintPageEventArgs
        Graphics g = e.Graphics;

        // Create a font and brush for the text
        Font font = new Font("Arial", 12);
        Brush brush = Brushes.Black;

        // Specify the text to be printed
        string text = "Hello, world!";

        // Calculate the position to draw the text
        float x = e.MarginBounds.Left;
        float y = e.MarginBounds.Top;

        // Draw the text on the page
        g.DrawString(text, font, brush, x, y);
    }
}

dotnet new console -o ./CsharpProjects/TestProject

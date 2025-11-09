using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        Console.WriteLine("║        FLAMES GAME - Love Test       ║");

        // Get first name
        Console.Write("Enter first person's name: ");
        string name1 = Console.ReadLine().ToLower().Replace(" ", "");

        // Get second name
        Console.Write("Enter second person's name: ");
        string name2 = Console.ReadLine().ToLower().Replace(" ", "");

        // Calculate FLAMES
        string result = CalculateFlames(name1, name2);

        // Display result
        Console.WriteLine("║              RESULT                   ║");
        Console.WriteLine($"\nName 1: {name1}");
        Console.WriteLine($"Name 2: {name2}");
        Console.WriteLine($"\n🔥 FLAMES Result: {result}\n");

        Console.WriteLine("Press any key to exit...");
        Console.ReadKey();
    }

    static string CalculateFlames(string name1, string name2)
    {
        // Convert to lists for easy removal
        List<char> list1 = new List<char>(name1.ToCharArray());
        List<char> list2 = new List<char>(name2.ToCharArray());

        // Remove common characters
        for (int i = list1.Count - 1; i >= 0; i--)
        {
            for (int j = list2.Count - 1; j >= 0; j--)
            {
                if (list1[i] == list2[j])
                {
                    list1.RemoveAt(i);
                    list2.RemoveAt(j);
                    break;
                }
            }
        }

        // Count remaining characters
        int count = list1.Count + list2.Count;
        Console.WriteLine($"\nTotal remaining characters: {count}");

        // If count is 0, return default
        if (count == 0)
        {
            return "FRIENDS 👫 (Perfect Match!)";
        }

        // FLAMES list
        List<string> flames = new List<string> { "F", "L", "A", "M", "E", "S" };

        // Elimination process
        int index = 0;
        while (flames.Count > 1)
        {
            // Calculate the position to remove
            index = (index + count - 1) % flames.Count;

            // Remove the element at that position
            flames.RemoveAt(index);

            // Adjust index for next iteration
            if (index >= flames.Count && flames.Count > 0)
            {
                index = 0;
            }
        }

        // Get final result
        string finalResult = flames[0];

        // Return full form
        switch (finalResult)
        {
            case "F":
                return "FRIENDS 👫";
            case "L":
                return "LOVE ❤️";
            case "A":
                return "AFFECTION 💕";
            case "M":
                return "MARRIAGE 💍";
            case "E":
                return "ENEMY 😠";
            case "S":
                return "SISTER/SIBLING 👭";
            default:
                return "Unknown";
        }
    }
}

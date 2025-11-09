using System;

class Program
{
    static void Main()
    {
        Console.WriteLine("===== Palindrome Checker =====\n");

        // Get input from user
        Console.Write("Enter a string: ");
        string input = Console.ReadLine();

        // Check if palindrome
        bool isPalindrome = CheckPalindrome(input);

        // Display result
        Console.WriteLine("\n===== RESULT =====");
        Console.WriteLine($"Input String: {input}");

        if (isPalindrome)
        {
            Console.WriteLine($"Result: '{input}' is a PALINDROME ✓");
        }
        else
        {
            Console.WriteLine($"Result: '{input}' is NOT a PALINDROME ✗");
        }

        Console.WriteLine("\nPress any key to exit...");
        Console.ReadKey();
    }

    // Method to check if string is palindrome
    static bool CheckPalindrome(string str)
    {
        // Remove spaces and convert to lowercase
        string cleanStr = str.Replace(" ", "").ToLower();

        // Get the length
        int length = cleanStr.Length;

        // Compare characters from start and end
        for (int i = 0; i < length / 2; i++)
        {
            if (cleanStr[i] != cleanStr[length - 1 - i])
            {
                return false;
            }
        }

        return true;
    }
}

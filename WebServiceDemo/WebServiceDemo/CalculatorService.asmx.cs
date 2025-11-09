using System;
using System.Web.Services;

namespace WebServiceDemo
{
    /// <summary>
    /// Summary description for CalculatorService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    public class CalculatorService : System.Web.Services.WebService
    {
        [WebMethod(Description = "Add two numbers")]
        public int Add(int a, int b)
        {
            return a + b;
        }

        [WebMethod(Description = "Subtract two numbers")]
        public int Subtract(int a, int b)
        {
            return a - b;
        }

        [WebMethod(Description = "Multiply two numbers")]
        public int Multiply(int a, int b)
        {
            return a * b;
        }

        [WebMethod(Description = "Divide two numbers")]
        public double Divide(int a, int b)
        {
            if (b == 0)
                throw new Exception("Cannot divide by zero");
            return (double)a / b;
        }

        [WebMethod(Description = "Get square of a number")]
        public int Square(int n)
        {
            return n * n;
        }

        [WebMethod(Description = "Check if number is even")]
        public bool IsEven(int n)
        {
            return n % 2 == 0;
        }

        [WebMethod(Description = "Get factorial of a number")]
        public long Factorial(int n)
        {
            if (n < 0)
                throw new Exception("Factorial not defined for negative numbers");

            if (n == 0 || n == 1)
                return 1;

            long result = 1;
            for (int i = 2; i <= n; i++)
            {
                result *= i;
            }
            return result;
        }

        [WebMethod(Description = "Get greeting message")]
        public string GetGreeting(string name)
        {
            return $"Hello, {name}! Welcome to our Web Service.";
        }

        [WebMethod(Description = "Get current server time")]
        public string GetServerTime()
        {
            return DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss");
        }
    }
}

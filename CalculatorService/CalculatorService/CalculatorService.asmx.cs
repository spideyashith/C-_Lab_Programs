using System;
using System.Web.Services;

namespace CalculatorServiceApp
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class CalculatorService : WebService
    {
        [WebMethod(Description = "Adds two numbers.")]
        public int Add(int a, int b)
        {
            return a + b;
        }

        [WebMethod(Description = "Subtracts the second number from the first.")]
        public int Subtract(int a, int b)
        {
            return a - b;
        }

        [WebMethod(Description = "Multiplies two numbers.")]
        public int Multiply(int a, int b)
        {
            return a * b;
        }

        [WebMethod(Description = "Divides the first number by the second (returns 0 if divided by zero).")]
        public double Divide(double a, double b)
        {
            if (b == 0)
                return 0;
            return a / b;
        }

        [WebMethod(Description = "Returns the square of a number.")]
        public int Square(int a)
        {
            return a * a;
        }
    }
}

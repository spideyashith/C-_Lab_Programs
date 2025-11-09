using System;
using System.Web.Services;

namespace CalculatorWebServiceDemo
{
    /// <summary>
    /// Simple calculator web service with 5 methods
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class CalculatorService : WebService
    {
        [WebMethod]
        public int Add(int a, int b)
        {
            return a + b;
        }

        [WebMethod]
        public int Subtract(int a, int b)
        {
            return a - b;
        }

        [WebMethod]
        public int Multiply(int a, int b)
        {
            return a * b;
        }

        [WebMethod]
        public string Divide(double a, double b)
        {
            if (b == 0)
                return "Error: Division by zero";
            return (a / b).ToString("G");
        }

        [WebMethod]
        public string GetServerTime()
        {
            return DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CityBusManagment
{
    public class ConnectionDB
    {
        public string GetConnection()
        {
            string con = @"Data Source=DESKTOP-8VJ7USG;Initial Catalog=CityBus;Integrated Security=True";
            return con;

        }
    }
}
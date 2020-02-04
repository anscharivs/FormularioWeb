using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FormularioWeb
{
    public class Datos
    {
        public List<String> GetCountries()
        {
            var países = new List<String>();
            países.Add("Argentina");
            países.Add("México");
            países.Add("Perú");
            países.Add("España");
            países.Add("Colombia");
            return países;
        }
    }
}
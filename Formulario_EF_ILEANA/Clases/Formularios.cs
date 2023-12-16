using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Formulario_EF_ILEANA.Clases
{
    public class Formularios
    {
        public int Edad { get; set;  }

        public string Nombre { get; set; }

        public string Correo { get; set; }

        public string Partido { get; set; }

        public Formularios(int edad, string nombre, string correo, string partido)
        {
            if (edad < 18)
            {
                throw new ArgumentException("La edad debe ser mayor o igual a 18.");
            }

            Edad = edad;

            Nombre = nombre;

            Correo = correo;

            Partido = partido;
        }

    }
    
}
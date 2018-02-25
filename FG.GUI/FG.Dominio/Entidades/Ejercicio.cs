using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FG.Dominio.Entidades
{
    public class Ejercicio
    {
        [Key]
        public int IdEjercicio { get; set; }
        public string NombreEjercicio { get; set; }
        public string NivelDificultad { get; set; }
        public string NombreLeccion { get; set; }
        public Lecciones Lecciones { get; set; }
    }
}


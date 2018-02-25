using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FG.Dominio.Entidades
{
    public class Lecciones
    {
        [Key]
        public int IdLeccion { get; set; }
        public string NombreLeccion { get; set; }
        public string Descripcion { get; set; }

        public string NombreTema { get; set; }
        public Tema Tema { get; set; }
    }
}

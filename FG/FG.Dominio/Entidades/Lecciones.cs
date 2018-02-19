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
        public int IdLecciones { get; set; }
        public string  NombreLeccion{ get; set; }
        public string DescripcionL { get; set; }
        public int IdTema { get; set; }
        //public int IdCurso { get; set; }
        public Tema Tema { get; set; }
    }
}

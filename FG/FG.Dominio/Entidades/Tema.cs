using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FG.Dominio.Entidades
{
   public  class Tema
    {
        [Key]
        public int IdTema { get; set; }
        public string NombreTema { get; set; }
        public string Periodo { get; set; }
        public string  Descripcion { get; set; }
        public int IdCurso { get; set; }

        public Curso Curso { get; set; }

    }
}

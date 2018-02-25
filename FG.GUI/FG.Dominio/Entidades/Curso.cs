using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FG.Dominio.Entidades
{
    public class Curso
    {
        [Key]
        public int IdCurso { get; set; }
        public string NombreCurso { get; set; }

    }

}

using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FG.Dominio.Entidades
{
    public class RecursoEducativo
    {
        [Key]
        public int IdRecurso { get; set; }
        public string NombreRecurso { get; set; }
        public string Descripcion { get; set; }

        public string Tipo { get; set; }
        public string NombreLeccion { get; set; }
        public Lecciones Lecciones { get; set; }
    }
}

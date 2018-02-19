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
        public int IdRecursoEd { get; set; }
        public string RecursoNombre { get; set; }
        public string RecursoDescripcion { get; set; }
        public string RecursoTipo { get; set; }

        public string Metadatos { get; set; }
        public int IdLeccion { get; set; }
        public Lecciones Lecciones { get; set; }
    }
}

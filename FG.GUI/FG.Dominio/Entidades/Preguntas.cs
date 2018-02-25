using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FG.Dominio.Entidades
{
    public class Preguntas
    {
        [Key]
        public int PreguntaId { get; set; }
        public string pregunta { get; set; }
        public string opt1 { get; set; }
        public string opt2 { get; set; }
        public string opt3 { get; set; }
        public string opt4 { get; set; }
        public string contador { get; set; }
        public string Respuesta { get; set; }
        //public int  IdEjercicio{ get; set; }
        public Curso Curso { get; set; }

    }
}

namespace RecursoEducativo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Preguntas
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

        public int IdCurso { get; set; }

        public int IdTema { get; set; }

        public int IdEjercicio { get; set; }
    }
}

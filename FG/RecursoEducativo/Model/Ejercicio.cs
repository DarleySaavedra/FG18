namespace RecursoEducativo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Ejercicio")]
    public partial class Ejercicio
    {
        [Key]
        public int IdEjercicio { get; set; }

        [Required]
        public string NombreEjercicio { get; set; }

        public string NivelDificultad { get; set; }

        public int IdTema { get; set; }

        public virtual Tema Tema { get; set; }
    }
}

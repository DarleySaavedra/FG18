namespace RecursoEducativo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Lecciones
    {
        [Key]
        public int IdLecciones { get; set; }

        public string NombreLeccion { get; set; }

        public string DescripcionL { get; set; }

        public int IdTema { get; set; }

        public virtual Tema Tema { get; set; }
    }
}

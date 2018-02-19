namespace RecursoEducativo
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Tema")]
    public partial class Tema
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Tema()
        {
            Ejercicio = new HashSet<Ejercicio>();
            Lecciones = new HashSet<Lecciones>();
        }

        [Key]
        public int IdTema { get; set; }

        public string NombreTema { get; set; }

        public string Periodo { get; set; }

        public string Descripcion { get; set; }

        public int IdCurso { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Ejercicio> Ejercicio { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lecciones> Lecciones { get; set; }
    }
}

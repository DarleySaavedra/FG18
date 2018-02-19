namespace RecursoEducativo
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelCurso : DbContext
    {
        public ModelCurso()
            : base("name=ModelCurso")
        {
        }

        public virtual DbSet<Ejercicio> Ejercicio { get; set; }
        public virtual DbSet<Lecciones> Lecciones { get; set; }
        public virtual DbSet<Preguntas> Preguntas { get; set; }
        public virtual DbSet<Tema> Tema { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}

namespace FG.Dominio.Repositorio
{
    using CONTENEDOR.Entidades;
    using FG.Dominio.Entidades;
    using System;
    using System.Data.Entity;
    using System.Data.Entity.ModelConfiguration.Conventions;
    using System.Linq;

    public class ModelMyFirst : DbContext
    {
        public DbSet<Curso> Curso { get; set; }
        public DbSet<Tema> Tema { get; set; }
        public DbSet<Lecciones> Lecciones { get; set; }

        public DbSet<Ejercicio> Ejercicio { get; set; }
        public DbSet<RecursoEducativo> RecursoEducativo { get; set; }

        public DbSet<Preguntas> Preguntas { get; set; }




        public ModelMyFirst()
            : base("name=ModelMyFirst")
        {
        }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();
        }
    }
   
    
}
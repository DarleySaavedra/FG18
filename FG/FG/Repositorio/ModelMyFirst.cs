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

        //public DbSet<Persona> Persona { get; set; }

        //public DbSet<Alumno> Alumno { get; set; }

        // El contexto se ha configurado para usar una cadena de conexión 'ModelMyFirst' del archivo 
        // de configuración de la aplicación (App.config o Web.config). De forma predeterminada, 
        // esta cadena de conexión tiene como destino la base de datos 'FG.Dominio.Repositorio.ModelMyFirst' de la instancia LocalDb. 
        // 
        // Si desea tener como destino una base de datos y/o un proveedor de base de datos diferente, 
        // modifique la cadena de conexión 'ModelMyFirst'  en el archivo de configuración de la aplicación.
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
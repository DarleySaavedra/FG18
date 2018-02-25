namespace Dapp2018_00.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTableEjercicio : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Ejercicio",
                c => new
                    {
                        IdEjercicio = c.Int(nullable: false, identity: true),
                        NombreEjercicio = c.String(),
                        NivelDificultad = c.String(),
                        NombreLeccion = c.String(),
                        Lecciones_IdLeccion = c.Int(),
                    })
                .PrimaryKey(t => t.IdEjercicio)
                .ForeignKey("dbo.Lecciones", t => t.Lecciones_IdLeccion)
                .Index(t => t.Lecciones_IdLeccion);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Ejercicio", "Lecciones_IdLeccion", "dbo.Lecciones");
            DropIndex("dbo.Ejercicio", new[] { "Lecciones_IdLeccion" });
            DropTable("dbo.Ejercicio");
        }
    }
}

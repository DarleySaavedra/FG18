namespace FG.Migrations
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
                        NombreEjercicio = c.Int(nullable: false),
                        NivelDificultad = c.String(),
                        IdTema = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdEjercicio)
                .ForeignKey("dbo.Tema", t => t.IdTema, cascadeDelete: true)
                .Index(t => t.IdTema);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Ejercicio", "IdTema", "dbo.Tema");
            DropIndex("dbo.Ejercicio", new[] { "IdTema" });
            DropTable("dbo.Ejercicio");
        }
    }
}

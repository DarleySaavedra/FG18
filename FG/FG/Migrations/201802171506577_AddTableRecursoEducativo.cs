namespace FG.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTableRecursoEducativo : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.RecursoEducativo",
                c => new
                    {
                        IdRecursoEd = c.Int(nullable: false, identity: true),
                        RecursoNombre = c.String(),
                        RecursoDescripcion = c.String(),
                        RecursoTipo = c.String(),
                        Metadatos = c.String(),
                        IdLeccion = c.Int(nullable: false),
                        Lecciones_IdLecciones = c.Int(),
                    })
                .PrimaryKey(t => t.IdRecursoEd)
                .ForeignKey("dbo.Lecciones", t => t.Lecciones_IdLecciones)
                .Index(t => t.Lecciones_IdLecciones);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RecursoEducativo", "Lecciones_IdLecciones", "dbo.Lecciones");
            DropIndex("dbo.RecursoEducativo", new[] { "Lecciones_IdLecciones" });
            DropTable("dbo.RecursoEducativo");
        }
    }
}

namespace Dapp2018_00.Migrations
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
                        IdRecurso = c.Int(nullable: false, identity: true),
                        NombreRecurso = c.String(),
                        Descripcion = c.String(),
                        Tipo = c.String(),
                        NombreLeccion = c.String(),
                        Lecciones_IdLeccion = c.Int(),
                    })
                .PrimaryKey(t => t.IdRecurso)
                .ForeignKey("dbo.Lecciones", t => t.Lecciones_IdLeccion)
                .Index(t => t.Lecciones_IdLeccion);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.RecursoEducativo", "Lecciones_IdLeccion", "dbo.Lecciones");
            DropIndex("dbo.RecursoEducativo", new[] { "Lecciones_IdLeccion" });
            DropTable("dbo.RecursoEducativo");
        }
    }
}

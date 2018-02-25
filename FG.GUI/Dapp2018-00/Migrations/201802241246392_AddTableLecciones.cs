namespace Dapp2018_00.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTableLecciones : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Lecciones",
                c => new
                    {
                        IdLeccion = c.Int(nullable: false, identity: true),
                        NombreLeccion = c.String(),
                        Descripcion = c.String(),
                        NombreTema = c.String(),
                        Tema_IdTema = c.Int(),
                    })
                .PrimaryKey(t => t.IdLeccion)
                .ForeignKey("dbo.Tema", t => t.Tema_IdTema)
                .Index(t => t.Tema_IdTema);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Lecciones", "Tema_IdTema", "dbo.Tema");
            DropIndex("dbo.Lecciones", new[] { "Tema_IdTema" });
            DropTable("dbo.Lecciones");
        }
    }
}

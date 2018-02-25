namespace Dapp2018_00.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTableTema : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Tema",
                c => new
                    {
                        IdTema = c.Int(nullable: false, identity: true),
                        NombreTema = c.String(),
                        Periodo = c.String(),
                        Descripcion = c.String(),
                        NombreCurso = c.String(),
                        Curso_IdCurso = c.Int(),
                    })
                .PrimaryKey(t => t.IdTema)
                .ForeignKey("dbo.Curso", t => t.Curso_IdCurso)
                .Index(t => t.Curso_IdCurso);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Tema", "Curso_IdCurso", "dbo.Curso");
            DropIndex("dbo.Tema", new[] { "Curso_IdCurso" });
            DropTable("dbo.Tema");
        }
    }
}

namespace FG.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTableCurso : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Curso",
                c => new
                    {
                        IdCurso = c.Int(nullable: false, identity: true),
                        NombreCurso = c.String(),
                        Descripcion = c.String(),
                    })
                .PrimaryKey(t => t.IdCurso);
            
            CreateTable(
                "dbo.Lecciones",
                c => new
                    {
                        IdLecciones = c.Int(nullable: false, identity: true),
                        NombreLeccion = c.String(),
                        DescripcionL = c.String(),
                        IdTema = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdLecciones)
                .ForeignKey("dbo.Tema", t => t.IdTema, cascadeDelete: true)
                .Index(t => t.IdTema);
            
            CreateTable(
                "dbo.Tema",
                c => new
                    {
                        IdTema = c.Int(nullable: false, identity: true),
                        NombreTema = c.String(),
                        Periodo = c.String(),
                        Descripcion = c.String(),
                        IdCurso = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.IdTema)
                .ForeignKey("dbo.Curso", t => t.IdCurso, cascadeDelete: true)
                .Index(t => t.IdCurso);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Lecciones", "IdTema", "dbo.Tema");
            DropForeignKey("dbo.Tema", "IdCurso", "dbo.Curso");
            DropIndex("dbo.Tema", new[] { "IdCurso" });
            DropIndex("dbo.Lecciones", new[] { "IdTema" });
            DropTable("dbo.Tema");
            DropTable("dbo.Lecciones");
            DropTable("dbo.Curso");
        }
    }
}

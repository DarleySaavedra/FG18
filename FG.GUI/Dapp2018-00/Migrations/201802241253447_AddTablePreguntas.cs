namespace Dapp2018_00.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddTablePreguntas : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Preguntas",
                c => new
                    {
                        PreguntaId = c.Int(nullable: false, identity: true),
                        pregunta = c.String(),
                        opt1 = c.String(),
                        opt2 = c.String(),
                        opt3 = c.String(),
                        opt4 = c.String(),
                        contador = c.String(),
                        Respuesta = c.String(),
                        Curso_IdCurso = c.Int(),
                    })
                .PrimaryKey(t => t.PreguntaId)
                .ForeignKey("dbo.Curso", t => t.Curso_IdCurso)
                .Index(t => t.Curso_IdCurso);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Preguntas", "Curso_IdCurso", "dbo.Curso");
            DropIndex("dbo.Preguntas", new[] { "Curso_IdCurso" });
            DropTable("dbo.Preguntas");
        }
    }
}

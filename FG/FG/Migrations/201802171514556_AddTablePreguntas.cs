namespace FG.Migrations
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
                        IdCurso = c.Int(nullable: false),
                        IdTema = c.Int(nullable: false),
                        IdEjercicio = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.PreguntaId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Preguntas");
        }
    }
}

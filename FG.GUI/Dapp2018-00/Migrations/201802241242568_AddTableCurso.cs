namespace Dapp2018_00.Migrations
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
                    })
                .PrimaryKey(t => t.IdCurso);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Curso");
        }
    }
}

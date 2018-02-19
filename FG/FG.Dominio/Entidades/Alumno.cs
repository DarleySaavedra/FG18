using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.ComponentModel.DataAnnotations;

namespace CONTENEDOR.Entidades
{
    public class Alumno
    {
        #region[Atributos]
        [Key]
        string IdAlumno;
        string tipoUsu;
        string nombrecompleto;
        string usuario;
        string clave;
        DateTime FechaC;
        #endregion

        #region[Constructor]
        public Alumno(string idAlumno, string tipoUsu, string nombrecompleto, string usuario, string clave, DateTime fechaC)
        {
            IdAlumno = idAlumno;
            this.tipoUsu = tipoUsu;
            this.nombrecompleto = nombrecompleto;
            this.usuario = usuario;
            this.clave = clave;
            FechaC = fechaC;
        }
        #endregion

        public string IdAlumno1 { get => IdAlumno; set => IdAlumno = value; }
        public string TipoUsu { get => tipoUsu; set => tipoUsu = value; }
        public string Nombrecompleto { get => nombrecompleto; set => nombrecompleto = value; }
        public string Usuario { get => usuario; set => usuario = value; }
        public string Clave { get => clave; set => clave = value; }
        public DateTime FechaC1 { get => FechaC; set => FechaC = value; }
  

        public Alumno() { }

   




        #region[Método Registrar]
        public int Registrar()
        {
            var resp = 0;
            try
            {
                var cadena = System.Configuration.ConfigurationManager.ConnectionStrings["Cn"].ConnectionString;

                using (var objCon = new SqlConnection())
                {
                    objCon.ConnectionString = cadena;
                    objCon.Open();

                    var oCmd = new SqlCommand();
                    oCmd.Connection = objCon;
                    oCmd.CommandType = CommandType.StoredProcedure;
                    oCmd.CommandText = "RegistrarUsuario";

                    //oCmd.Parameters.AddWithValue("IdTipo", this.IdAlumno.ToUpper());
                    oCmd.Parameters.AddWithValue("@NombreCompleto", this.Nombrecompleto.ToUpper());
                    oCmd.Parameters.AddWithValue("@Usuario", this.Usuario);
                    oCmd.Parameters.AddWithValue("@Clave", this.Clave);
                    oCmd.Parameters.AddWithValue("@TipoUsuario", this.TipoUsu.ToUpper());
                    oCmd.Parameters.AddWithValue("@FechaCreado", this.FechaC.TimeOfDay);


                    resp = oCmd.ExecuteNonQuery();


                    objCon.Close();
                }

            }
            catch (Exception ex)
            {
                throw ex;
            }
            return resp;
        }
        public int Registrar(Alumno objPersona)
        {
            return 1;
        }

#endregion
    }
}
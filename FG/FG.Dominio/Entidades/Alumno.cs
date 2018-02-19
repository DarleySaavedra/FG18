using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace CONTENEDOR.Entidades
{
    public class Alumno
    {
        #region[Atributos]
        string IdAlumno;
        string NombreA;
        string ApellidoA;
        string EdadA;
        string SexoA;
        string Direccion;
        string DepartamentoA;
        string Telefono;
        string Colegio;
#endregion

        public Alumno() { }

        #region[Constructor]
        public Alumno(string idAlumno, string nombreA, string apellidoA, string edadA, string sexoA, string direccion, string departamentoA, string telefono, string colegio)
        {
            IdAlumno1 = idAlumno;
            NombreA1 = nombreA;
            ApellidoA1 = apellidoA;
            EdadA1 = edadA;
            SexoA1 = sexoA;
            Direccion1 = direccion;
            DepartamentoA1 = departamentoA;
            Telefono1 = telefono;
            Colegio1 = colegio;
        }
        #endregion
        
        public string IdAlumno1 { get => IdAlumno; set => IdAlumno = value; }
        public string NombreA1 { get => NombreA; set => NombreA = value; }
        public string ApellidoA1 { get => ApellidoA; set => ApellidoA = value; }
        public string EdadA1 { get => EdadA; set => EdadA = value; }
        public string SexoA1 { get => SexoA; set => SexoA = value; }
        public string Direccion1 { get => Direccion; set => Direccion = value; }
        public string DepartamentoA1 { get => DepartamentoA; set => DepartamentoA = value; }
        public string Telefono1 { get => Telefono; set => Telefono = value; }
        public string Colegio1 { get => Colegio; set => Colegio = value; }

        #region[Métodos]
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
                    oCmd.CommandText = "RegistrarAlumno";

                    //oCmd.Parameters.AddWithValue("@IdAlumno", this.IdAlumno.ToUpper());
                    oCmd.Parameters.AddWithValue("@NombreA", this.NombreA.ToUpper());
                    oCmd.Parameters.AddWithValue("@ApellidoA", this.ApellidoA.ToUpper());
                    oCmd.Parameters.AddWithValue("@EdadA", this.EdadA.ToUpper());
                    oCmd.Parameters.AddWithValue("@SexoA", this.SexoA.ToUpper());
                    oCmd.Parameters.AddWithValue("@DireccionA", this.Direccion.ToUpper());
                    oCmd.Parameters.AddWithValue("@Departamento", this.DepartamentoA.ToUpper());
                    oCmd.Parameters.AddWithValue("@Telefono", this.Telefono.ToUpper());
                    oCmd.Parameters.AddWithValue("@Colegio", this.Colegio.ToUpper());

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
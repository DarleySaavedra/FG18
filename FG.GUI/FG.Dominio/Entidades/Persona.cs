using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FG.Dominio.Entidades
{
    public class Persona
    {
        #region[Atributos]
        [Key]
        string IdPersona;
        string NombreA;
        string ApellidoA;
        string EdadA;
        string grado;
        string SexoA;
        string Direccion;
        string DepartamentoA;
        string Telefono;
        string Colegio;
        DateTime fecha;
        Persona Alumno;

        public Persona()
        {
        }

        #endregion

        #region[Constructor]

        public Persona(string idPersona, string nombreA, string apellidoA, string edadA, string grado, string sexoA, string direccion, string departamentoA, string telefono, string colegio, DateTime fecha, Persona alumno)
        {
            IdPersona1 = idPersona;
            NombreA1 = nombreA;
            ApellidoA1 = apellidoA;
            EdadA1 = edadA;
            this.Grado = grado;
            SexoA1 = sexoA;
            Direccion1 = direccion;
            DepartamentoA1 = departamentoA;
            Telefono1 = telefono;
            Colegio1 = colegio;
            this.Fecha = fecha;
            Alumno1 = alumno;
        }

        #endregion
        public string IdPersona1 { get => IdPersona; set => IdPersona = value; }
        public string NombreA1 { get => NombreA; set => NombreA = value; }
        public string ApellidoA1 { get => ApellidoA; set => ApellidoA = value; }
        public string EdadA1 { get => EdadA; set => EdadA = value; }
        public string Grado { get => grado; set => grado = value; }
        public string SexoA1 { get => SexoA; set => SexoA = value; }
        public string Direccion1 { get => Direccion; set => Direccion = value; }
        public string DepartamentoA1 { get => DepartamentoA; set => DepartamentoA = value; }
        public string Telefono1 { get => Telefono; set => Telefono = value; }
        public string Colegio1 { get => Colegio; set => Colegio = value; }
        public DateTime Fecha { get => fecha; set => fecha = value; }
        public Persona Alumno1 { get => Alumno; set => Alumno = value; }

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
                    oCmd.CommandText = "RegistrarAlumno";

                    //oCmd.Parameters.AddWithValue("@IdAlumno", this.IdPersona1.ToUpper());
                    oCmd.Parameters.AddWithValue("@NombreA", this.NombreA1.ToUpper());
                    oCmd.Parameters.AddWithValue("@ApellidoA", this.ApellidoA1.ToUpper());
                    oCmd.Parameters.AddWithValue("@EdadA", this.EdadA1.ToUpper());
                    oCmd.Parameters.AddWithValue("@GradoA", this.Grado.ToUpper());
                    oCmd.Parameters.AddWithValue("@SexoA", this.SexoA1.ToUpper());
                    oCmd.Parameters.AddWithValue("@Cuidad", this.Direccion1.ToUpper());
                    oCmd.Parameters.AddWithValue("@Departamento", this.DepartamentoA1.ToUpper());
                    oCmd.Parameters.AddWithValue("@Telefono", this.Telefono1.ToUpper());
                    oCmd.Parameters.AddWithValue("@Colegio", this.Colegio1.ToUpper());
                    oCmd.Parameters.AddWithValue("@FechaCreada", this.Fecha.TimeOfDay);



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
        public int Registrar(Persona objPersona)
        {
            return 1;
        }

        #endregion
    }
}

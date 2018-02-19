using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Game.Seguridad
{
  public  class ValidarAlumno
    {
        public Tuple<int, string> ValidarAcceso(Usuario objUsuario)
        {
            Tuple<int, string> respuesta = new Tuple<int, string>(0, "Usuario no registrado");

            try
            {
                //Agregar la referencia del ensamblado System.Configuration al proyecto para poder usar la clase ConfigurationManager
                string cadena = System.Configuration.ConfigurationManager.ConnectionStrings["Cn"].ConnectionString;

                using (var oConnec = new SqlConnection())
                {
                    oConnec.ConnectionString = cadena;
                    oConnec.Open(); //abrir la conexión
                    //Commando a la base de datos
                    var oCmd = new SqlCommand();
                    oCmd.Connection = oConnec;
                    oCmd.CommandType = CommandType.StoredProcedure;
                    oCmd.CommandText = "up_ValidarAcceso";
                    //Parámetros
                    //Entrada
                    oCmd.Parameters.AddWithValue("@Username", objUsuario.Username);
                    oCmd.Parameters.AddWithValue("@Password", objUsuario.Password);
                    //Salida
                    var oPar3 = new SqlParameter();
                    oPar3.Direction = ParameterDirection.Output;
                    oPar3.ParameterName = "@Resp";
                    oPar3.Size = 8;
                    oCmd.Parameters.Add(oPar3);

                    //Ejecutar el comando
                    oCmd.ExecuteNonQuery();

                    //Recuperar el valor del parámetro de salida
                    int resp = Int32.Parse(oPar3.Value.ToString());

                    if (resp > 0)
                        return new Tuple<int, string>(1, "Usuario autenticado");

                    oConnec.Close();
                }
            }
            catch (Exception ex) { throw ex; }

            return respuesta;
        }
    }
}



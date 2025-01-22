using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;

namespace negocio
{
    public class TraineeNegocio
    {
        AccesoDatos conexion  = new AccesoDatos();

        public void actualizar(Trainee user)
        {
            try
            {
                AccesoDatos conexion = new AccesoDatos();
                conexion.setearConsulta("UPDATE USERS SET email=@email, nombre = @nombre, apellido=@apellido, fechaNacimiento = @fecha, imagenPerfil = @imagenPerfil where id=@id;");
                conexion.setearParametro("@nombre", user.Nombre);
                conexion.setearParametro("@email", user.Email);
                conexion.setearParametro("@apellido", user.Apellido);
                conexion.setearParametro("@fecha", user.FechaNacimiento);
                //conexion.setearParametro("@fechaNacimiento", user.FechaNacimiento);
                conexion.setearParametro("@imagenPerfil", user.ImagenPerfil ?? (object)DBNull.Value); //NULL COALESCING
                // conexion.setearParametro("@imagenPerfil", user.ImagenPerfil != null ? user.ImagenPerfil : (object)DBNull.Value);
                conexion.setearParametro("@id", user.Id);
                conexion.ejecutarLectura();
            }
            catch (Exception ex) { throw ex; }
            finally
            {
                conexion.cerrarConexion();
            }

        }

        public int insertarNuevo(Trainee nuevo)
        {
            try
            {
                conexion.setearProcedure("insertarNuevo");
                conexion.setearParametro("@email", nuevo.Email);
                conexion.setearParametro("@pass", nuevo.Pass);
                return conexion.ejecutarAccionScalar();
            }
            catch (Exception e) 
            {
                throw e;
            }

            finally
            {
                conexion.cerrarConexion();
            }
        }
        
        public bool LogIn(Trainee trainee)
        {

            AccesoDatos conexion = new AccesoDatos();

            try
            {
                conexion.setearConsulta("Select id, email, pass, nombre, apellido, fechaNacimiento , imagenPerfil ,admin FROM USERS where email = @email AND pass=@pass;");
                conexion.setearParametro("@email", trainee.Email);
                conexion.setearParametro("@pass", trainee.Pass);
                conexion.ejecutarLectura();
                if (conexion.Lector.Read())
                {
                    trainee.Id = (int)conexion.Lector["id"];
                    trainee.Admin = (bool)conexion.Lector["admin"];
                    if (!(conexion.Lector["imagenPerfil"] is DBNull)) 
                    trainee.ImagenPerfil = (string)conexion.Lector["imagenPerfil"];
                    if (!(conexion.Lector["nombre"] is DBNull))
                        trainee.Nombre = (string)conexion.Lector["nombre"];    
                    if (!(conexion.Lector["apellido"] is DBNull))
                        trainee.Apellido = (string)conexion.Lector["apellido"]; 
                    if (!(conexion.Lector["fechaNacimiento"] is DBNull))
                        trainee.FechaNacimiento = (DateTime)(conexion.Lector["fechaNacimiento"]);
                    return true;
                }
                return false;
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                conexion.cerrarConexion();
            }
        }
    }
}

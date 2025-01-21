using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace negocio
{
    public class UsuarioNegocio
    {
        public bool Loguear(Usuario usuario)
        {
            AccesoDatos conexion = new AccesoDatos();
            try
            {
                conexion.setearConsulta("SELECT id, usuario, pass, tipoUser FROM USUARIOS WHERE usuario = @user AND pass = @pass");
                conexion.setearParametro("@user", usuario.User);
                conexion.setearParametro("@pass", usuario.Pass);
                conexion.ejecutarLectura();
                while (conexion.Lector.Read())
                {
                    usuario.Id = (int)conexion.Lector["Id"];
                    usuario.TipoUsuario = (int)conexion.Lector["tipoUser"] == 2 ? UserType.ADMIN : UserType.NORMAL;
                    return true;
                }
               return false;
            }
            catch (Exception ex) { throw ex; }
            finally
            {
                conexion.cerrarConexion();
            }
        }
    }
}

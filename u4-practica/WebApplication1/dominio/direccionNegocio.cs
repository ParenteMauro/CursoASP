using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class direccionNegocio
    {
        
        public List<Direccion> listar()
        {
            List<Direccion> direccionList = new List<Direccion>();
            
            Direccion d = new Direccion();
            Direccion d2 = new Direccion();

            d.Altura = 123;
            d.Calle = "Calchines";

            d2.Altura = 423;
            d2.Calle ="Palmeras";


            direccionList.Add(d);
            direccionList.Add(d2);



            return direccionList;
        }
    }
}

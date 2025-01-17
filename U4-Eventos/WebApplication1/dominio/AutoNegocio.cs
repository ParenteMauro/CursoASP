using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Dominio
{
    public class AutoNegocio
    {
        private List<Auto> listaAutos;
            public AutoNegocio()
        {
            listaAutos = new List<Auto>();
        }
        public List<Auto> listar()
        {
            Auto auto1 = new Auto();

            auto1.Id = 1;
            auto1.Descripcion = "RRRUM 1";
            auto1.Fecha = DateTime.Parse("13/12/1999");
            auto1.Usado = true;
            auto1.Color = "verde";
            auto1.Modelo = "206";
            auto1.Importado = true;

            Auto auto2 = new Auto();

            auto2.Id = 2;
            auto2.Descripcion = "rummmm rumm 2";
            auto2.Fecha = DateTime.Parse("15/1/2018");
            auto2.Usado = false;
            auto2.Color = "negro";
            auto2.Modelo = "Civic 18";
            auto2.Importado = false;
            listaAutos.Add(auto1);
            listaAutos.Add(auto2);
            return listaAutos;
        }

        public void agregar(Auto auto)
        {
            listaAutos.Add(auto);
        }

    }
}
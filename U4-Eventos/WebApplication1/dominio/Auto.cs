﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Dominio
{
    public class Auto
    {
        public int Id {  get; set; }
        public string Modelo { get; set; }
        public string Descripcion {  get; set; }
        public string Color {  get; set; }
        public DateTime Fecha { get; set; }
        public bool Usado { get; set; }
        public bool Importado {  get; set; }

    }
}
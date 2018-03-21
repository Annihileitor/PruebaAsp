using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prueba1
{
    public class Producto
    {
        public static List<Producto> listaProductos = new List<Producto>();
        private string id;
        private string marca;
        private string tipo;
        private int stock;
        private string detalle;


        public string _id
        {
            get { return id; }
            set { id = value; }
        }

        public string _marca
        {
            get { return marca; }
            set { marca = value; }
        }

        public string _tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }

        public int _stock
        {
            get { return stock; }
            set { stock = value; }
        }

        public string _detalle
        {
            get { return detalle; }
            set { detalle = value; }
        }

        public static Producto buscarProducto(string idx)
        {

            foreach (Producto aux in listaProductos)
            {
                if (aux._id == idx)
                {
                    return aux;
                }

            }
            return null;
        }

        public static void ingresarProducto(string idx,string marca, string tipo,string detalle){
                Producto pro = new Producto()
                {
                    _id = idx,
                    _marca = marca,
                    _tipo = tipo,
                    _detalle = detalle
                    
                };

                Producto.listaProductos.Add(pro);
                
            }
        public static List<Producto> listarProductos()
        {

            return listaProductos;
        }
    

    }
}
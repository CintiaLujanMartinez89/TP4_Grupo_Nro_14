using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;    //agrego libreria para uso de sql
using System.Windows;

namespace TP4_Grupo_Nro_14
{
    public partial class Ejercicio2 : System.Web.UI.Page
    {
        string rutaBD = "Data Source=DESKTOP-6989SQA\\SQLEXPRESS;Initial Catalog=Neptuno;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTodo();

            }
        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (txtbCategoria.Text != "" & txtbProducto.Text != "")
            {
                FiltrarPorAmbos();
              
            }
            else if (txtbCategoria.Text != "" & txtbProducto.Text=="")

            {FiltrarpoCategoria();
              
            }      else  if(txtbProducto.Text != "" & txtbCategoria.Text=="")

            {
                FiltrarPorProducto();
    
            }
            else if (txtbCategoria.Text == "" & txtbProducto.Text == "")
            {
               CargarTodo();

            }



        }

        private void CargarTodo()
        {
           
                string consulta = "select * from productos";
                DataSet ds = new DataSet();
                SqlConnection conexion = new SqlConnection(rutaBD);
                conexion.Open();

                SqlDataAdapter adaptador = new SqlDataAdapter(consulta, conexion);
                adaptador.Fill(ds, "Productos");
                gvProductos.DataSource = ds.Tables["Productos"];
                gvProductos.DataBind();

                conexion.Close();
            
        }
        private void FiltrarPorProducto()
        {
            string consultaFiltrarP = "select * from Productos where idProducto " + ddlIdProducto.Text + txtbProducto.Text;//+" "+ "and idCategoría " + ddlIdCategoria.Text + txtbCategoria.Text;
           // MessageBox.Show(consultaFiltrarP);

            DataSet ds = new DataSet();
            SqlConnection conexion = new SqlConnection(rutaBD);
            conexion.Open();

            SqlDataAdapter adaptador = new SqlDataAdapter(consultaFiltrarP, conexion);
            adaptador.Fill(ds, "Productos");
            gvProductos.DataSource = ds.Tables["Productos"];
            gvProductos.DataBind();

            conexion.Close();
        }

        private void FiltrarpoCategoria()
        {
            string consultaFiltrarC = "select * from Productos where idCategoría " + ddlIdCategoria.Text + txtbCategoria.Text;
           // MessageBox.Show(consultaFiltrarC);

            DataSet dsC = new DataSet();
            SqlConnection conexionC = new SqlConnection(rutaBD);
            conexionC.Open();

            SqlDataAdapter adaptadorC = new SqlDataAdapter(consultaFiltrarC, conexionC);
            adaptadorC.Fill(dsC, "Productos");
            gvProductos.DataSource = dsC.Tables["Productos"];
            gvProductos.DataBind();

            conexionC.Close();

        }

        private void FiltrarPorAmbos()
        {
            string consultaFiltrarP = "select * from Productos where idProducto " + ddlIdProducto.Text + txtbProducto.Text + " " + "and idCategoría " + ddlIdCategoria.Text + txtbCategoria.Text;
          //  MessageBox.Show(consultaFiltrarP);

            DataSet ds = new DataSet();
            SqlConnection conexion = new SqlConnection(rutaBD);
            conexion.Open();

            SqlDataAdapter adaptador = new SqlDataAdapter(consultaFiltrarP, conexion);
            adaptador.Fill(ds, "Productos");
            gvProductos.DataSource = ds.Tables["Productos"];
            gvProductos.DataBind();

            conexion.Close();

        }

        protected void btnQuitarFiltro_Click(object sender, EventArgs e)
        {
            CargarTodo();
            txtbCategoria.Text = "";
            txtbProducto.Text = "";

        }
    }
}
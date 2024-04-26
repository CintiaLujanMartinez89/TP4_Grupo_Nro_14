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
   
    public partial class Ejercicio3 : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-6989SQA\\SQLEXPRESS;Initial Catalog=Libreria;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarTemas();
        }

        private void CargarTemas()
        {
            string consultaSQLProv = "SELECT * FROM Temas";
            SqlCommand cmd = new SqlCommand(consultaSQLProv, conexion);
            conexion.Open();
            ddlTema.DataSource = cmd.ExecuteReader();
            ddlTema.DataTextField = "Tema";
            ddlTema.DataValueField = "idTema";
            ddlTema.DataBind();
            conexion.Close();
        }

        protected void lkbVerLibros_Click(object sender, EventArgs e)
        {
            Server.Transfer("Ejercicio3B.aspx");
        }
    }
}
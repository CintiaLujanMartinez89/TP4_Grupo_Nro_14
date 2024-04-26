using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;    //agrego libreria para uso de sql
using System.Windows;

namespace TP4_Grupo_Nro_14
{
    public partial class Ejercicio1 : System.Web.UI.Page
    {
        SqlConnection conexion = new SqlConnection("Data Source = DESKTOP-6989SQA\\SQLEXPRESS; Initial Catalog = Viajes; Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProvinciasInicio();
                CargarLocalidadesInicio();
                CargarProvinciasDestinoFinal();
                CargarLocalidadesDestinoFinal();
            }
        }

        private void CargarProvinciasInicio()
        {
            string consultaSQLProv = "SELECT * FROM Provincias";
            SqlCommand cmdP = new SqlCommand(consultaSQLProv, conexion);
            conexion.Open();
            ddlProvinciaDI.DataSource = cmdP.ExecuteReader();
            ddlProvinciaDI.DataTextField = "NombreProvincia";
            ddlProvinciaDI.DataValueField = "idProvincia";
            ddlProvinciaDI.DataBind();
            conexion.Close();
        }

        private void CargarLocalidadesInicio()
        {
            string provinciaSeleccionadaDI = ddlProvinciaDI.SelectedValue;
            string consultaSQLLoc = "SELECT * FROM Localidades WHERE idProvincia = " + provinciaSeleccionadaDI ;
            SqlCommand cmdL = new SqlCommand(consultaSQLLoc, conexion);
            conexion.Open();
            ddlLocalidadDI.DataSource = cmdL.ExecuteReader();
            ddlLocalidadDI.DataTextField = "NombreLocalidad";
            ddlLocalidadDI.DataValueField = "idLocalidad";
            ddlLocalidadDI.DataBind();
            conexion.Close();
        }

        private void CargarProvinciasDestinoFinal()
        {
            string provinciaSeleccionadaDI = ddlProvinciaDI.SelectedValue;
            string consultaSQLProvF = "SELECT * FROM Provincias WHERE idProvincia <> " + provinciaSeleccionadaDI ;

          //  MessageBox.Show(consultaSQLProvF);

            SqlCommand cmdP = new SqlCommand(consultaSQLProvF, conexion);
            conexion.Open();
            ddlProvinciaDF.DataSource = cmdP.ExecuteReader();
            ddlProvinciaDF.DataTextField = "NombreProvincia";
            ddlProvinciaDF.DataValueField = "idProvincia";
            ddlProvinciaDF.DataBind();
            conexion.Close();
        }

        private void CargarLocalidadesDestinoFinal()
        {
            string provinciaSeleccionadaDF = ddlProvinciaDF.SelectedValue;
            string consultaSQLLoc = "SELECT * FROM Localidades WHERE idProvincia = " + provinciaSeleccionadaDF ;

            SqlCommand cmdL = new SqlCommand(consultaSQLLoc, conexion);
            conexion.Open();
            ddlLocalidadDF.DataSource = cmdL.ExecuteReader();
            ddlLocalidadDF.DataTextField = "NombreLocalidad";
            ddlLocalidadDF.DataValueField = "idLocalidad";
            ddlLocalidadDF.DataBind();
            conexion.Close();
        }

        protected void ddlProvinciaDI_SelectedIndexChanged(object sender, EventArgs e)

        {
            
            CargarLocalidadesInicio();
            CargarProvinciasDestinoFinal();
            CargarLocalidadesDestinoFinal();
        }

        protected void ddlProvinciaDF_SelectedIndexChanged(object sender, EventArgs e)
        {
            CargarLocalidadesDestinoFinal();
        }
    }
}

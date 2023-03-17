using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestionEnfermeriaFinal
{
    public partial class MenuPrincipal2 : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection();
        public SqlCommand tabb = new SqlCommand();
        public SqlDataAdapter dadap = new SqlDataAdapter();
        public DataSet Dset = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            //  Response.Write( Session["Usuario"].ToString());
            BuscarUsuarios();
        }
        protected void ConectarBD()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
            conn.Open();

        }
        protected void BuscarUsuarios()
        {
            try
            {
                ConectarBD();
                tabb = new SqlCommand("select * from Usuarios where idUsuario='" + Session["Usuario"].ToString() + "'", conn);
                dadap.SelectCommand = tabb;
                dadap.Fill(Dset, "Usuarios");
                SqlDataReader LectorSQL;
                LectorSQL = tabb.ExecuteReader();

                if (LectorSQL.Read() == true)
                {
                    lblNombreUsuario.Text = " "+ LectorSQL["Nombres"] + " " + LectorSQL["Apellidos"];

                }
                else
                {
                    Response.Write("Credenciales incorrectas");
                    //Response.Redirect("Login.aspx");
                }
            }
            catch (SqlException ex)
            {
                Response.Write("error" + ex.ToString());
                Response.Redirect("Login.aspx");
            }
        }
    }
}
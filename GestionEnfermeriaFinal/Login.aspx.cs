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
    public partial class Login : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection();
        public SqlCommand tabb = new SqlCommand();
        public SqlDataAdapter dadap = new SqlDataAdapter();
        public DataSet Dset = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ConectarBD()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
            conn.Open();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("select * from Usuarios where NombreUsuario='" + txtnombre.Text.Trim() + " ' AND Clave = '" + txtPass.Text.Trim() + " ' ", conn);
                dadap.SelectCommand = tabb;
                dadap.Fill(Dset, "Usuarios");
                SqlDataReader LectorSQL;
                LectorSQL = tabb.ExecuteReader();
                
                if (LectorSQL.Read() == true)
                {
                    //La variable Session se inicializa en Global.asax
                    Response.Write(" lei algo   " + LectorSQL["NombreUsuario"].ToString());
                    Session["Usuario"] = LectorSQL[0]; // se le entrega toda la fila de coincide
                    Response.Redirect("MenuPrincipal.aspx");
                }
                else
                {
                    //Response.Write("Credenciales incorrectas");
                    lblMostar.ForeColor = System.Drawing.Color.Red;
                    lblMostar.Text = "Credenciales incorrectas";
                }



            }
            catch (SqlException ex)
            {
                Response.Write(ex.ToString());
            }

        }
    }
}
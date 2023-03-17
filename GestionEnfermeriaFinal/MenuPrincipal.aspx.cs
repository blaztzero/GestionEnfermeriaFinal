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
    public partial class MenuPrincipal : System.Web.UI.Page
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
                    LblBienvenida.Text = "Bienvenido: " + LectorSQL["Nombres"] + " " + LectorSQL["Apellidos"];

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
        protected void BtnPacientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Pacientes.aspx");
        }

        protected void BtnAppAutos_Click(object sender, EventArgs e)
        {
            Response.Redirect("ArriendoAutos.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("MenuPrincipal2.aspx?dato1=1&dato2=2");
        }

        protected void BtnBonos_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistarBonos.aspx");
        }

        protected void BtnPtofesionales_Click(object sender, EventArgs e)
        {

        }

        protected void BtnVisitas_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistrarVisita.aspx");
        }

        protected void BtnValidacionPagos_Click(object sender, EventArgs e)
        {
            Response.Redirect("ValidarPagos.aspx");
        }

        protected void BtnAdministrarUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("ModuloUsuarios.aspx");
        }

        protected void BtnConfig_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarVisitas.aspx");
        }
    }
}
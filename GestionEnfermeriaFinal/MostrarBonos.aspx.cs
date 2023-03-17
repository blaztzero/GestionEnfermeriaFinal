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
    public partial class MostrarBonos : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection();
        public SqlCommand tabb = new SqlCommand();
        public SqlDataAdapter dadap = new SqlDataAdapter();
        public DataSet Dset = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            BuscarUsuarios();
        }
        protected void GridView_PreRender(object sender, EventArgs e)
        {
            GridView gv = (GridView)sender;

            if ((gv.ShowHeader == true && gv.Rows.Count > 0)
                || (gv.ShowHeaderWhenEmpty == true))
            {
                //Force GridView to use <thead> instead of <tbody> - 11/03/2022 - MCR.
                gv.HeaderRow.TableSection = TableRowSection.TableHeader;
            }
            if (gv.ShowFooter == true && gv.Rows.Count > 0)
            {
                //Force GridView to use <tfoot> instead of <tbody> - 11/03/2022 - MCR.
                gv.FooterRow.TableSection = TableRowSection.TableFooter;
            }
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
                    lblUsuario.Text = "Usuario: " + LectorSQL["Nombres"] + " " + LectorSQL["Apellidos"] + " " + LectorSQL["TipoUsuario"];

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
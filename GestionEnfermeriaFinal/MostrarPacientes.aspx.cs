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
    public partial class MostrarPacientes : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection();
        public SqlCommand tabb = new SqlCommand();
        public SqlDataAdapter dadap = new SqlDataAdapter();
        public DataSet Dset = new DataSet();

        
        protected void Page_Load(object sender, EventArgs e)
        {
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
                  //  LblBienvenida.Text = "Bienvenido: " + LectorSQL["Nombres"] + " " + LectorSQL["Apellidos"];

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
        

        protected void BtnBuscarPorRut_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource2.SelectCommand = "select * from Pacientes where Rut='" + TxtBuscarRut.Text + "'";
                SqlDataSource2.DataBind();
                if(TxtBuscarRut.Text.Trim().Length < 3)
                {
                    SqlDataSource2.SelectCommand = "select * from Pacientes";
                    SqlDataSource2.DataBind();
                }
                else
                {
                    
                    //  Response.Redirect("Login.aspx");
                }


            }
            catch (SqlException ex)
            {
                Response.Write("error" + ex.ToString());
              //  Response.Redirect("Login.aspx");
            }
        }

        protected void BtnBuscarNombre_Click(object sender, EventArgs e)
        {
            try
            {
                SqlDataSource2.SelectCommand = "select * from Pacientes where Nombre LIKE '%" + TxtBuscarNombre.Text + "%'";
                SqlDataSource2.DataBind();
                if (TxtBuscarNombre.Text.Trim().Length < 3)
                {
                    SqlDataSource2.SelectCommand = "select * from Pacientes";
                    SqlDataSource2.DataBind();
                }
                else
                {
                    
                    //  Response.Redirect("Login.aspx");
                }


            }
            catch (SqlException ex)
            {
                Response.Write("error" + ex.ToString());
                //  Response.Redirect("Login.aspx");
            }
        }

        protected void BtnConectarBD_Click(object sender, EventArgs e)
        {

        }

        protected void BtnListarListbox_Click(object sender, EventArgs e)
        {

        }

        protected void BtnDesconectarBD_Click(object sender, EventArgs e)
        {

        }

        protected void BtnRegresoDePacientes_Click(object sender, EventArgs e)
        {

        }

        protected void GridViewTablaPacientes_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void BtnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPrincipal.aspx");
        }
    }
}
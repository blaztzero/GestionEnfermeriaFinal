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
   
    public partial class MostrarVisitas : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection();
        public SqlCommand tabb = new SqlCommand();
        public SqlDataAdapter dadap = new SqlDataAdapter();
        public DataSet Dset = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            BuscarUsuarios();
            ContarUsuarios();
            ContarVisitasFinalizadas();

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
        protected void ContarVisitasFinalizadas()
        {
            try
            {
                ConectarBD();
                tabb = new SqlCommand("select count(*) contar from VisitasEnfermeria where Estado LIKE '%Finalizada%' ", conn);
                dadap.SelectCommand = tabb;
                dadap.Fill(Dset, "VisitasEnfermeria");
                SqlDataReader LectorSQL;
                LectorSQL = tabb.ExecuteReader();

                if (LectorSQL.Read() == true)
                {
                    lblVisitasTerminadas.Text = LectorSQL["Contar"].ToString();//+ " " + LectorSQL["TipoUsuario"]
                    
                }
                else
                {
                    //  Response.Write("Credenciales incorrectas");
                    //Response.Redirect("Login.aspx");
                }
            }
            catch (SqlException ex)
            {
                Response.Write("Error   " + ex.Message);
            }

        }
        protected void ContarUsuarios()
        {
            try
            {
                ConectarBD();
                tabb = new SqlCommand("select count(*) contar from VisitasEnfermeria where Estado LIKE '%Pendiente%' ", conn);
                dadap.SelectCommand = tabb;
                dadap.Fill(Dset, "VisitasEnfermeria");
                SqlDataReader LectorSQL;
                LectorSQL = tabb.ExecuteReader();

                if (LectorSQL.Read() == true)
                {
                    lblVisitasPendientes.Text = LectorSQL["Contar"].ToString();//+ " " + LectorSQL["TipoUsuario"]
                   
                }
                else
                {
                  //  Response.Write("Credenciales incorrectas");
                    //Response.Redirect("Login.aspx");
                }
            }
            catch (SqlException ex)
            {
                Response.Write("Error   "+ex.Message);
            }
           
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
                    lblUsuario.Text = "Usuario: " + LectorSQL["NombreUsuario"].ToString() ;//+ " " + LectorSQL["TipoUsuario"]

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPrincipal.aspx");
        }

        protected void GridViewVisitasEnfermeria_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                //LblUsuarioRoles.Text = "Usuario: " + GridView1.SelectedRow.Cells[1].Text;
                txtBusqueda.Text = GridViewVisitasEnfermeria.SelectedRow.Cells[2].Text;
               // TxtNombre.Text = GridView1.SelectedRow.Cells[4].Text;
               // TxtApellidos.Text = GridView1.SelectedRow.Cells[5].Text;
               // TxtClave.Text = GridView1.SelectedRow.Cells[2].Text;
                //  lblNombreCompleto.Text = " Nombre: " + GridView1.SelectedRow.Cells[4].Text + " "+ GridView1.SelectedRow.Cells[5].Text;
            }
            catch (Exception ex)
            {
                Response.Write(GridViewVisitasEnfermeria.SelectedRow.Cells[0].Text + ex.Message);
            }

        }

        protected void GridViewVisitasEnfermeria_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="Pendientes")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                //Response.Write("Pla vendistee" + index);

                try
                {

                    ConectarBD();
                    tabb = new SqlCommand("Update VisitasEnfermeria set Estado=@Estado where IdVisita=" + GridViewVisitasEnfermeria.Rows[index].Cells[0].Text, conn);
                    dadap.UpdateCommand = tabb;
                 //   dadap.UpdateCommand.Parameters.Add("@IdVisita", SqlDbType.Int);
                    dadap.UpdateCommand.Parameters.Add("@Estado", SqlDbType.VarChar);
                  

                  //  dadap.UpdateCommand.Parameters["@IdVisita"].Value = int.Parse(GridViewVisitasEnfermeria.SelectedRow.Cells[0].Text);
                    dadap.UpdateCommand.Parameters["@Estado"].Value = "Pendiente";
                    GridViewVisitasEnfermeria.UpdateRow(index, false);


                    dadap.UpdateCommand.ExecuteNonQuery();
                    txtBusqueda.Text ="Registro Actualizado Correctamente";
                   

                }
                catch (Exception ex)
                {
                   Response.Write( "Error     "+ex.Message);
                }
               

            }
            if (e.CommandName == "Finalizar")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                //Response.Write("Pla vendistee" + index);

                try
                {

                    ConectarBD();
                    tabb = new SqlCommand("Update VisitasEnfermeria set Estado=@Estado where IdVisita=" + GridViewVisitasEnfermeria.Rows[index].Cells[0].Text, conn);
                    dadap.UpdateCommand = tabb;
                    //   dadap.UpdateCommand.Parameters.Add("@IdVisita", SqlDbType.Int);
                    dadap.UpdateCommand.Parameters.Add("@Estado", SqlDbType.VarChar);


                    //  dadap.UpdateCommand.Parameters["@IdVisita"].Value = int.Parse(GridViewVisitasEnfermeria.SelectedRow.Cells[0].Text);
                    dadap.UpdateCommand.Parameters["@Estado"].Value = "Finalizado";
                    GridViewVisitasEnfermeria.UpdateRow(index, false);


                    dadap.UpdateCommand.ExecuteNonQuery();
                    txtBusqueda.Text = "Registro Finalizado Correctamente";


                }
                catch (Exception ex)
                {
                    Response.Write("Error     " + ex.Message);
                }


            }
            if (e.CommandName == "SinPago")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                //Response.Write("Pla vendistee" + index);

                try
                {

                    ConectarBD();
                    tabb = new SqlCommand("Update VisitasEnfermeria set Estado=@Estado where IdVisita=" + GridViewVisitasEnfermeria.Rows[index].Cells[0].Text, conn);
                    dadap.UpdateCommand = tabb;
                    //   dadap.UpdateCommand.Parameters.Add("@IdVisita", SqlDbType.Int);
                    dadap.UpdateCommand.Parameters.Add("@Estado", SqlDbType.VarChar);


                    //  dadap.UpdateCommand.Parameters["@IdVisita"].Value = int.Parse(GridViewVisitasEnfermeria.SelectedRow.Cells[0].Text);
                    dadap.UpdateCommand.Parameters["@Estado"].Value = "Sin Pago";
                    GridViewVisitasEnfermeria.UpdateRow(index, false);


                    dadap.UpdateCommand.ExecuteNonQuery();
                    txtBusqueda.Text = "Registro Actualizado Correctamente";


                }
                catch (Exception ex)
                {
                    Response.Write("Error   " + ex.Message);
                }


            }


        }
    }
}

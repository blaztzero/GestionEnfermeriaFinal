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
    public partial class ModuloUsuarios : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(); // Variable de Conexion
        public SqlCommand tabb = new SqlCommand(); //tabb almacena la tabla y la consulta que realizara 
        public SqlDataAdapter dadap = new SqlDataAdapter(); // Dadap = llena el dataset con los datos 
        public DataSet Dset = new DataSet(); // Dset= lleva los datos de la tabla a la ram del usuario

        protected void Page_Load(object sender, EventArgs e)
        {
            ConectarBD();
            CargarTabla();
            DataTable tabla = new DataTable();
            tabla = Dset.Tables["Usuarios"];
            LblTotalRegistros.Text = "Total de Usuarios:  "+tabla.Rows.Count.ToString();

        }
        protected void ConectarBD()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
            conn.Open();

        }
        protected void CargarTabla()
        {
            tabb = new SqlCommand("select * from Usuarios", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "Usuarios");
        }
        protected void CargarRoles()
        {
            tabb = new SqlCommand("select * from RolesUsuario", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "RolesUsuario");
        }
        protected void ContarUsuarios()
        {
            tabb = new SqlCommand("select count(*) contar from Usuarios ", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "Usuarios");
        }
        protected void BuscarUsuario()
        {
            tabb = new SqlCommand("select * from Usuarios where NombreUsuario='" + TxtNombreUsuario.Text.Trim() + " ' ", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "Usuarios");
        }
        protected void LimpiarCasillas()
        {
          
            cboTipoUsuario.SelectedIndex = 0;

        }
        protected void BtnBuscarRut_Click(object sender, EventArgs e)
        {
            try
            {
                ConectarBD();
                BuscarUsuario();
                DataTable tabla = new DataTable();
                tabla = Dset.Tables["Usuarios"];
                foreach (DataRow Fila in tabla.Rows)
                {
                    // response white

                    TxtNombre.Text = Fila[1].ToString();
                    TxtClave.Text = Fila[2].ToString();
                    string itemToCompare = string.Empty;
                    string itemOrigin = Fila[3].ToString().Trim();
                    // Response.Write(itemOrigin);
                    foreach (ListItem item in cboTipoUsuario.Items)
                    {

                        itemToCompare = item.Text.Trim();

                        if (itemToCompare == itemOrigin)
                        {

                            cboTipoUsuario.ClearSelection();
                            item.Selected = true;
                        }

                    }


                 

                    string itemToCompare2 = string.Empty;
                    string itemOrigin2 = Fila[5].ToString().Trim();
                    // Response.Write(itemOrigin);
                    foreach (ListItem item in cboTipoUsuario.Items)
                    {

                        itemToCompare2 = item.Text.Trim();

                        if (itemToCompare2 == itemOrigin2)
                        {

                            
                            item.Selected = true;
                        }

                    }
                   // btnGrabarDatos.Enabled = false;
                }

            }
            catch (Exception ex)
            {
                //MessageBox.Show("Error al Traer Datos " + ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

               // LblUsuarioRoles.Text = "Usuario: " + GridView1.SelectedRow.Cells[1].Text;
                TxtNombreUsuario.Text = GridView1.SelectedRow.Cells[1].Text;
                TxtNombre.Text = GridView1.SelectedRow.Cells[4].Text;
                TxtApellidos.Text = GridView1.SelectedRow.Cells[5].Text;
                TxtClave.Text = GridView1.SelectedRow.Cells[2].Text;
                //  lblNombreCompleto.Text = " Nombre: " + GridView1.SelectedRow.Cells[4].Text + " "+ GridView1.SelectedRow.Cells[5].Text;
            }
            catch (Exception ex)
            {
                Response.Write(GridView1.SelectedRow.Cells[0].Text + ex.Message);
            }
            
        }

        protected void BtnGrabarRoles_Click(object sender, EventArgs e)
        {
            try
            {
                
                    ConectarBD();
                    tabb = new SqlCommand("Insert Into RolesUsuario values(@idUsuario,@Seleccionar,@Insertar,@Modificar,@Eliminar)", conn);
                    dadap.InsertCommand = tabb;

                    dadap.InsertCommand.Parameters.Add("@idUsuario", SqlDbType.VarChar);
                    dadap.InsertCommand.Parameters.Add("@Seleccionar", SqlDbType.VarChar);
                    dadap.InsertCommand.Parameters.Add("@Insertar", SqlDbType.VarChar);
                    dadap.InsertCommand.Parameters.Add("@Modificar", SqlDbType.VarChar);
                    dadap.InsertCommand.Parameters.Add("@Eliminar", SqlDbType.Int);
                  


                    

                    dadap.InsertCommand.ExecuteNonQuery();
                    Response.Write("Datos grabados correctamente");
                    //LimpiarCasillas();
                    //soltardatos();
                    //cargartabla();

               
                 
                
            }
            catch(Exception ex)
            {
                    // MessageBox.Show(" " + ex.Procedure.ToString(), "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Response.Write("Error al insertar Datos en la BD" + ex.Message);
            }
            
        }

        protected void BtnBucarNombreUsuario_Click(object sender, EventArgs e)
        {
            try
            {
                ConectarBD();
                BuscarUsuario();
                DataTable tabla = new DataTable();
                tabla = Dset.Tables["Usuarios"];
                foreach (DataRow Fila in tabla.Rows)
                {
                    // response white

                    TxtNombre.Text = Fila[1].ToString();
                    TxtClave.Text = Fila[2].ToString();
                    string itemToCompare = string.Empty;
                    string itemOrigin = Fila[3].ToString().Trim();
                    // Response.Write(itemOrigin);
                    foreach (ListItem item in cboTipoUsuario.Items)
                    {

                        itemToCompare = item.Text.Trim();

                        if (itemToCompare == itemOrigin)
                        {

                            cboTipoUsuario.ClearSelection();
                            item.Selected = true;
                        }

                    }




                    string itemToCompare2 = string.Empty;
                    string itemOrigin2 = Fila[5].ToString().Trim();
                    // Response.Write(itemOrigin);
                    foreach (ListItem item in cboTipoUsuario.Items)
                    {

                        itemToCompare2 = item.Text.Trim();

                        if (itemToCompare2 == itemOrigin2)
                        {


                            item.Selected = true;
                        }

                    }
                //    btnGrabarDatos.Enabled = false;
                }

            }
            catch (Exception ex)
            {
                //MessageBox.Show("Error al Traer Datos " + ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        protected void btnGrabarDatos_Click(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("Insert Into Usuarios values(@NombreUsuario,@Clave,@TipoUsuario,@Nombres,@Apellidos)", conn);
                dadap.InsertCommand = tabb;

               
                dadap.InsertCommand.Parameters.Add("@NombreUsuario", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Clave", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@TipoUsuario", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Nombres", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Apellidos", SqlDbType.VarChar);

                dadap.InsertCommand.Parameters["@NombreUsuario"].Value = TxtNombreUsuario.Text;
                dadap.InsertCommand.Parameters["@Clave"].Value = TxtClave.Text;
                dadap.InsertCommand.Parameters["@TipoUsuario"].Value = cboTipoUsuario.SelectedItem.Text;
                dadap.InsertCommand.Parameters["@Nombres"].Value = TxtNombre.Text;
                dadap.InsertCommand.Parameters["@Apellidos"].Value = TxtApellidos.Text;
                



                dadap.InsertCommand.ExecuteNonQuery();
                Response.Write("Datos grabados correctamente");
                //LimpiarCasillas();
                //soltardatos();
                //cargartabla();




            }
            catch (Exception ex)
            {
                // MessageBox.Show(" " + ex.Procedure.ToString(), "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Response.Write("Error al insertar Datos en la BD" + ex.Message);
            }

        }

        protected void BtnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPrincipal.aspx");
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("Delete from Usuarios where NombreUsuario=@NombreUsuario", conn);
                dadap.DeleteCommand = tabb;
                dadap.DeleteCommand.Parameters.Add("@NombreUsuario", SqlDbType.Char);
                dadap.DeleteCommand.Parameters["@Rut"].Value = TxtNombreUsuario.Text;
                dadap.DeleteCommand.ExecuteNonQuery();
                Response.Write("Registro Eliminado");
                //LimpiarCasillas();
                //soltardatos();
                //cargartabla();


            }
            catch (Exception ex)
            {
                Response.Write("Error al Eliminar Datos en la BD    :   " + ex.Message);
            }
        }

        protected void BtnGuardarUsuario_Click(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("Insert Into Usuarios values(@NombreUsuario,@Clave,@TipoUsuario,@Nombres,@Apellidos)", conn);
                dadap.InsertCommand = tabb;


                dadap.InsertCommand.Parameters.Add("@NombreUsuario", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Clave", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@TipoUsuario", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Nombres", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Apellidos", SqlDbType.VarChar);

                dadap.InsertCommand.Parameters["@NombreUsuario"].Value = TxtNombreUsuario.Text;
                dadap.InsertCommand.Parameters["@Clave"].Value = TxtClave.Text;
                dadap.InsertCommand.Parameters["@TipoUsuario"].Value = cboTipoUsuario.SelectedItem.Text;
                dadap.InsertCommand.Parameters["@Nombres"].Value = TxtNombre.Text;
                dadap.InsertCommand.Parameters["@Apellidos"].Value = TxtApellidos.Text;




                dadap.InsertCommand.ExecuteNonQuery();
                Response.Write("Datos grabados correctamente");
                //LimpiarCasillas();
                //soltardatos();
                //cargartabla();




            }
            catch (Exception ex)
            {
                // MessageBox.Show(" " + ex.Procedure.ToString(), "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Response.Write("Error al insertar Datos en la BD" + ex.Message);
            }
        }

        protected void BtnEliminar_Click1(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("Delete from Usuarios where NombreUsuario=@NombreUsuario", conn);
                dadap.DeleteCommand = tabb;
                dadap.DeleteCommand.Parameters.Add("@NombreUsuario", SqlDbType.Char);
                dadap.DeleteCommand.Parameters["@NombreUsuario"].Value = TxtNombreUsuario.Text;
                dadap.DeleteCommand.ExecuteNonQuery();
                Response.Write("Registro Eliminado");
                //LimpiarCasillas();
                //soltardatos();
                //cargartabla();


            }
            catch (Exception ex)
            {
                Response.Write("Error al Eliminar Datos en la BD    :   " + ex);
            }
        }
    }
}
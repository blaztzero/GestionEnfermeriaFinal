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
    public partial class RegistarBonos : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(); // Variable de Conexion
        public SqlCommand tabb = new SqlCommand(); //tabb almacena la tabla y la consulta que realizara 
        public SqlDataAdapter dadap = new SqlDataAdapter(); // Dadap = llena el dataset con los datos 
        public DataSet Dset = new DataSet(); // Dset= lleva los datos de la tabla a la ram del usuario


        protected void Page_Load(object sender, EventArgs e)
        {
            String fechaIngreso = DateTime.Now.ToString();

            LblFechaHoraBono.Text = fechaIngreso;
        }
        protected void ConectarBD()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
            conn.Open();

        }
        protected void CargarTabla()
        {
            tabb = new SqlCommand("select * from BonosFonasa", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "BonosFonasa");
        }

        protected void BtnGuardarBono_Click(object sender, EventArgs e)
        {
            try
            {
                ConectarBD();
                tabb = new SqlCommand("Insert Into BonosFonasa values(   @rutBeneficiario," +
                                                                        "@nombreBeneficiario," +
                                                                        "@rutTitular," +
                                                                        "@nombreTitular," +
                                                                        "@rutPrestador," +
                                                                        "@nombrePrestador," +
                                                                        "@prestacionMedica," +
                                                                        "@valorTotal," +
                                                                        "@nivel," +
                                                                        "@folio," +
                                                                        "@fechaHoraIngreso)", conn);
               
                                                                          //,[rutBeneficiario]
                                                                          //,[nombreBeneficiario]
                                                                          //,[rutTitular]
                                                                          //,[nombreTitular]
                                                                          //,[rutPrestador]
                                                                          //,[nombrePrestador]
                                                                          //,[prestacionMedica]
                                                                          //,[valorTotal]
                                                                          //,[nivel]
                                                                          //,[folio]
                                                                          //,[fechaHoraIngreso]
                dadap.InsertCommand = tabb;

                dadap.InsertCommand.Parameters.Add("@rutBeneficiario", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@nombreBeneficiario", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@rutTitular", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@nombreTitular", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@rutPrestador", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@nombrePrestador", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@prestacionMedica", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@valorTotal", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@nivel", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@folio", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@fechaHoraIngreso", SqlDbType.VarChar);
         

                dadap.InsertCommand.Parameters["@rutBeneficiario"].Value = txtRutBeneficiario.Text;
                dadap.InsertCommand.Parameters["@nombreBeneficiario"].Value = txtNombre.Text;
                dadap.InsertCommand.Parameters["@rutTitular"].Value = txtRutTitular.Text;
                dadap.InsertCommand.Parameters["@nombreTitular"].Value = txtNombreTitular.Text;
                dadap.InsertCommand.Parameters["@rutPrestador"].Value = txtRutPrestador.Text.Trim().ToString();
                dadap.InsertCommand.Parameters["@nombrePrestador"].Value = txtNombrePrestador.Text;
                dadap.InsertCommand.Parameters["@prestacionMedica"].Value = txtPrestacionMedica.Text;
                dadap.InsertCommand.Parameters["@valorTotal"].Value = txtValortotal.Text;
                dadap.InsertCommand.Parameters["@nivel"].Value = cboNivelBono.SelectedItem.ToString().Trim();
                dadap.InsertCommand.Parameters["@folio"].Value = txtFolioBono.Text.Trim().ToString();
                dadap.InsertCommand.Parameters["@fechaHoraIngreso"].Value =  LblFechaHoraBono.Text.ToString();
                dadap.InsertCommand.ExecuteNonQuery();
                Response.Write("Datos grabados correctamente");
                //LimpiarCasillas();
                //soltardatos();
                //cargartabla();

            }
            catch (SqlException ex)
            {
                Response.Write("Error" + ex.Message);

            }
        }

        protected void btnMenuPrincipal_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPrincipal.aspx");
        }

        protected void btnListar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarBonos.aspx");
        }

        protected void BtnModificarBono_Click(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("Update BonosFonasa set Nombre=@rutBeneficiario,Direccion=@nombreBeneficiario,Ciudad=@rutTitular,Fono=@Fono,Afiliacion=@Afiliacion where Rut=@Rut ", conn);
                dadap.UpdateCommand = tabb;
                dadap.UpdateCommand.Parameters.Add("@rutBeneficiario", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@nombreBeneficiario", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@rutTitular", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@nombreTitular", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@rutPrestador", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@nombrePrestador", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@prestacionMedica", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@valorTotal", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@nivel", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@folio", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@fechaHoraIngreso", SqlDbType.VarChar);


                dadap.UpdateCommand.Parameters["@rutBeneficiario"].Value = txtRutBeneficiario.Text;
                dadap.UpdateCommand.Parameters["@nombreBeneficiario"].Value = txtNombre.Text;
                dadap.UpdateCommand.Parameters["@rutTitular"].Value = txtRutTitular.Text;
                dadap.UpdateCommand.Parameters["@nombreTitular"].Value = txtNombreTitular.Text;
                dadap.UpdateCommand.Parameters["@rutPrestador"].Value = txtRutPrestador.Text.Trim().ToString();
                dadap.UpdateCommand.Parameters["@nombrePrestador"].Value = txtNombrePrestador.Text;
                dadap.UpdateCommand.Parameters["@prestacionMedica"].Value = txtPrestacionMedica.Text;
                dadap.UpdateCommand.Parameters["@valorTotal"].Value = txtValortotal.Text;
                dadap.UpdateCommand.Parameters["@nivel"].Value = cboNivelBono.SelectedItem.ToString().Trim();
                dadap.UpdateCommand.Parameters["@folio"].Value = txtFolioBono.Text.Trim().ToString();
                dadap.UpdateCommand.Parameters["@fechaHoraIngreso"].Value = LblFechaHoraBono.Text.ToString();

                dadap.UpdateCommand.ExecuteNonQuery();
                Response.Write("Resgistro Actualizado");
                


            }
            catch (SqlException ex)
            {
                //MessageBox.Show("Error al Modificar Datos " + ex.Procedure, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
                  Response.Write("Error al Actualizar Datos en la BD    :   " + ex);
            }
        }

        protected void BtnEliminarBono_Click(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("Delete from BonosFonasa where RutBeneficiario=@RutBeneficiario", conn);
                dadap.DeleteCommand = tabb;
                dadap.DeleteCommand.Parameters.Add("@RutBeneficiario", SqlDbType.Char);
                dadap.DeleteCommand.Parameters["@RutBeneficiario"].Value = txtRutBeneficiario.Text;
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
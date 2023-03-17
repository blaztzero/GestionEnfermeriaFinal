using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
/*
            asp.net en framwork 4.6 x es una solucion tecnologica robusta y fuertemente tipada 
            en ocaciones se requiere inicializar el proyecto completo desde 0 para poder avanzar en un proyecto de aprendizaje
            en opinion personal es combeniente actualizar el paradigma de programacion mas actualizado y fexible
            que permita el correcto funcionamiento de las herramientas de desarollo mas actuales
            5 meses de programacion aplicando este paradigma orientado a eventos puedo concluior que el paradigma de clases orientado a objetos  MVC es mucho mas efectivo y legible por el programador
            ademas permite seguridad y control de la informacion
            en lo personal asp.net le gusta trabajr su disenio desde las propiedades de interfaz grafica mas que de la programacion en el con codigo nativo y escalable
            si me preguntara si volveria a usar esta tecnologia creo que no , el mercado a evolucionado bastante y usaria .netCore MVC o Python para un proyecto web debido a la fexibilidad y escalabilida que estos proyectos nesesitan
            C# me parece una buen leguaje de backend y amigable con programador, gracias a las actualizaciones .netCore se puede explotar mas aun su funcionalidad 
            es necesaro que alumno aprenda diferentes formas y metodologias de desarrollo para aplicar y conocer al momento de se requeridos durante la experiencia laboral
*/
namespace GestionEnfermeriaFinal
{
    public partial class Pacientes : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(); // Variable de Conexion
        public SqlCommand tabb = new SqlCommand(); //tabb almacena la tabla y la consulta que realizara 
        public SqlDataAdapter dadap = new SqlDataAdapter(); // Dadap = llena el dataset con los datos 
        public DataSet Dset = new DataSet(); // Dset= lleva los datos de la tabla a la ram del usuario

        protected void Page_Load(object sender, EventArgs e)
        {
            FechaHoraActual();
        }
        protected void ConectarBD()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
            conn.Open();

        }
        protected void CargarTabla()
        {
            tabb = new SqlCommand("select * from Pacientes", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "Pacientes");
        }
        protected void BuscarPaciente()
        {
            tabb = new SqlCommand("select * from Pacientes where Rut='" + TxtRut.Text.Trim() + " ' ", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "Pacientes");
        }
        protected void FechaHoraActual()
        {
            String fechaIngreso = DateTime.Now.ToString();

            lblFechaHora.Text = fechaIngreso;
        }
        protected void LimpiarCasillas()
        {
            TxtDireccion.Text = "";
            TxtNombre.Text = "";
            TxtRut.Text = "";
            TxtDireccion.Text = "";
            TxtFono.Text = "";
            cboAfiliacion.SelectedIndex = 0;
            cboCiudad.SelectedIndex = 0;

        }
        protected void BtnBuscarRut_Click(object sender, EventArgs e)
        {
            try
            {
                ConectarBD();
                BuscarPaciente();
                DataTable tabla = new DataTable();
                tabla = Dset.Tables["pacientes"];
                foreach (DataRow Fila in tabla.Rows)
                {
                    // response white

                    TxtNombre.Text = Fila[1].ToString();
                    TxtDireccion.Text = Fila[2].ToString();
                    string itemToCompare = string.Empty;
                    string itemOrigin = Fila[3].ToString().Trim();
                    // Response.Write(itemOrigin);
                    foreach (ListItem item in cboCiudad.Items)
                    {

                        itemToCompare = item.Text.Trim();

                        if (itemToCompare == itemOrigin)
                        {

                            cboCiudad.ClearSelection();
                            item.Selected = true;
                        }

                    }


                    TxtFono.Text = Fila[4].ToString();

                    string itemToCompare2 = string.Empty;
                    string itemOrigin2 = Fila[5].ToString().Trim();
                    // Response.Write(itemOrigin);
                    foreach (ListItem item in cboAfiliacion.Items)
                    {

                        itemToCompare2 = item.Text.Trim();

                        if (itemToCompare2 == itemOrigin2)
                        {

                            cboAfiliacion.ClearSelection();
                            item.Selected = true;
                        }

                    }
                    btnGrabarDatos.Enabled = false;
                }

            }
            catch (Exception ex)
            {
                MessageBox.Show("Error al Traer Datos " + ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        protected void btnGrabarDatos_Click(object sender, EventArgs e)
        {
            try
            {
                ConectarBD();
                tabb = new SqlCommand("Insert Into Pacientes values(@Rut,@Nombre,@Direccion,@Ciudad,@Fono,@Afiliacion)", conn);
                dadap.InsertCommand = tabb;

                dadap.InsertCommand.Parameters.Add("@Rut", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Nombre", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Direccion", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Ciudad", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Fono", SqlDbType.Int);
                dadap.InsertCommand.Parameters.Add("@Afiliacion", SqlDbType.VarChar);


                dadap.InsertCommand.Parameters["@Rut"].Value = TxtRut.Text;
                dadap.InsertCommand.Parameters["@Nombre"].Value = TxtNombre.Text;
                dadap.InsertCommand.Parameters["@Direccion"].Value = TxtDireccion.Text;
                dadap.InsertCommand.Parameters["@Ciudad"].Value = cboCiudad.SelectedItem.ToString();
                dadap.InsertCommand.Parameters["@Fono"].Value = int.Parse(TxtFono.Text);
                dadap.InsertCommand.Parameters["@Afiliacion"].Value = cboAfiliacion.SelectedItem.ToString();

                dadap.InsertCommand.ExecuteNonQuery();
                Response.Write("Datos grabados correctamente");
                //LimpiarCasillas();
                //soltardatos();
                //cargartabla();

            }
            catch (SqlException ex)
            {
                //MessageBox.Show(" " + ex.Procedure.ToString(), "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
                Response.Write("Error al insertar Datos en la BD" + ex.Message);
            }
        }

        protected void BtnActualizarDatos_Click(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("Update Pacientes set Nombre=@Nombre,Direccion=@Direccion,Ciudad=@Ciudad,Fono=@Fono,Afiliacion=@Afiliacion where Rut=@Rut ", conn);
                dadap.UpdateCommand = tabb;
                dadap.UpdateCommand.Parameters.Add("@Rut", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@Nombre", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@Direccion", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@Ciudad", SqlDbType.VarChar);
                dadap.UpdateCommand.Parameters.Add("@Fono", SqlDbType.Int);
                dadap.UpdateCommand.Parameters.Add("@Afiliacion", SqlDbType.VarChar);

                dadap.UpdateCommand.Parameters["@Rut"].Value = TxtRut.Text;
                dadap.UpdateCommand.Parameters["@Nombre"].Value = TxtNombre.Text;
                dadap.UpdateCommand.Parameters["@Direccion"].Value = TxtDireccion.Text;
                dadap.UpdateCommand.Parameters["@Ciudad"].Value = cboCiudad.SelectedItem.ToString();
                dadap.UpdateCommand.Parameters["@Fono"].Value = TxtFono.Text;
                dadap.UpdateCommand.Parameters["@Afiliacion"].Value = cboAfiliacion.SelectedItem.ToString();

                dadap.UpdateCommand.ExecuteNonQuery();
                Response.Write("Registro Actualizado Correctamente");
                LimpiarCasillas();


            }
            catch (SqlException ex)
            {
                //MessageBox.Show("Error al Modificar Datos " + ex.Procedure, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
                  Response.Write("Error al Actualizar Datos en la BD    :   " + ex.Message);
            }
        }

        protected void BtnEliminar_Click(object sender, EventArgs e)
        {
            try
            {

                ConectarBD();
                tabb = new SqlCommand("Delete from Pacientes where Rut=@Rut", conn);
                dadap.DeleteCommand = tabb;
                dadap.DeleteCommand.Parameters.Add("@Rut", SqlDbType.Char);
                dadap.DeleteCommand.Parameters["@Rut"].Value = TxtRut.Text;
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

        protected void btnVerPacientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("MostrarPacientes.aspx");
        }

        protected void BtnSalir_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPrincipal.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void BtnCalcularImc_Click(object sender, EventArgs e)
        {
            try
            {
                
                decimal peso, altura, resutado2, resultado;
                peso = decimal.Parse(txtPeso.Text.ToString());
                altura = decimal.Parse(txtAltur.Text.ToString());
                resutado2 = altura * altura;
                resultado = ((decimal)peso/((decimal)altura * (decimal)altura));
                LblResultadoimc.Text = "imc = " + resultado.ToString();//+" peso = " + peso.ToString()+" altura = " + altura.ToString()
               
            }
            catch(Exception ex)
            {
                Response.Write("Error en esto : " +ex.Message);
            }
        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {

        }

       
    }
}
using System;
using System.Linq;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace GestionEnfermeriaFinal
{
    public partial class RegistrarVisita : System.Web.UI.Page
    {
        public SqlConnection conn = new SqlConnection(); // Variable de Conexion
        public SqlCommand tabb = new SqlCommand(); //tabb almacena la tabla y la consulta que realizara 
        public SqlDataAdapter dadap = new SqlDataAdapter(); // Dadap = llena el dataset con los datos 
        public DataSet Dset = new DataSet(); // Dset= lleva los datos de la tabla a la ram del usuario

        protected void Page_Load(object sender, EventArgs e)
        {
            FechaHoraActual();
        }

        protected void FechaHoraActual()
        {
            String fechaIngreso = DateTime.Now.ToString();

            LblFechaVisita.Text = fechaIngreso;
        }
        /// <summary>
        /// Funcion que establece coneccion con base de datos
        /// </summary>
        protected void ConectarBD()
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
            conn.Open();

        }/// <summary>
         /// Funcion que extrae todos los datos la tabla pacientes 
         /// </summary>
        protected void CargarTabla()
        {
            tabb = new SqlCommand("select * from Pacientes", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "Pacientes");
        }

        /// <summary>
        /// Funcion que trae los datos de la tabla Pacientes filtrados por <param name="Rut"></param>
        /// </summary>
        protected void BuscarPaciente()
        {
            tabb = new SqlCommand("select * from Pacientes where Rut='" + TxtRutPaciente.Text.Trim() + " ' ", conn);
            dadap.SelectCommand = tabb;
            dadap.Fill(Dset, "Pacientes");
        }

        protected void Button3_Click(object sender, EventArgs e)
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
                    TxtNombrePaciente.Text = Fila[1].ToString();
                    TxtDireccionPaciente.Text = Fila[2].ToString();
                    TxtTelefonoPaciente.Text = Fila[4].ToString();
                    TxtAfiliacion.Text = Fila[5].ToString();


                }

            }
            catch (Exception ex)
            {
               // MessageBox.Show("Error al Traer Datos " + ex.Message, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }

        protected void BtnRegistrarVisita_Click(object sender, EventArgs e)
        {
            try
            {
                ConectarBD();
                tabb = new SqlCommand("Insert Into VisitasEnfermeria values(@RutPaciente,@NombrePaciente,@DireccionVisita,@Afiliacion,@FonoCliente,@NombreProfesional,@FechaVisita,@Procedimientos,@Medicamentos,@Insumos,@Tratamientos,@Estado)", conn);
                dadap.InsertCommand = tabb;

                dadap.InsertCommand.Parameters.Add("@RutPaciente", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@NombrePaciente", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@DireccionVisita", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Afiliacion", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@FonoCliente", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@NombreProfesional", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@FechaVisita", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Procedimientos", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Medicamentos", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Insumos", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Tratamientos", SqlDbType.VarChar);
                dadap.InsertCommand.Parameters.Add("@Estado", SqlDbType.VarChar);


                dadap.InsertCommand.Parameters["@RutPaciente"].Value = TxtRutPaciente.Text;
                dadap.InsertCommand.Parameters["@NombrePaciente"].Value = TxtNombrePaciente.Text;
                dadap.InsertCommand.Parameters["@DireccionVisita"].Value = TxtDireccionPaciente.Text;
                dadap.InsertCommand.Parameters["@Afiliacion"].Value = TxtAfiliacion.Text;
                dadap.InsertCommand.Parameters["@FonoCliente"].Value = TxtTelefonoPaciente.Text;
                dadap.InsertCommand.Parameters["@NombreProfesional"].Value = cboProfesional.SelectedItem.ToString();
                dadap.InsertCommand.Parameters["@FechaVisita"].Value = LblFechaVisita.Text;
                dadap.InsertCommand.Parameters["@Procedimientos"].Value = TxtProcedimiento.Text;
                dadap.InsertCommand.Parameters["@Medicamentos"].Value = TxtMedicamentos.Text;
                dadap.InsertCommand.Parameters["@Insumos"].Value = TxtInsumos.Text;
                dadap.InsertCommand.Parameters["@Tratamientos"].Value = TxtTratamiento.Text;
                dadap.InsertCommand.Parameters["@Estado"].Value = "En Revision";


                dadap.InsertCommand.ExecuteNonQuery();
                Response.Write("Datos grabados correctamente");
                Response.Redirect("MostrarVisitas.aspx");
                //LimpiarCasillas();
                //soltardatos();
                //cargartabla();

            }
            catch (SqlException ex)
            {
             //   MessageBox.Show("Error al Insertar Datos " + ex, "ERROR", MessageBoxButtons.OK, MessageBoxIcon.Information);
                  Response.Write("Error al insertar Datos en la BD" + ex.Message);
            }
        }
    

        protected void BtnVolverMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPrincipal.aspx");  
        }
    }
}
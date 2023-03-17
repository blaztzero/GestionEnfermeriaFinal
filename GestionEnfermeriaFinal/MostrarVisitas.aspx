<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarVisitas.aspx.cs" Inherits="GestionEnfermeriaFinal.MostrarVisitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"/>
    <link href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css"  rel="stylesheet" />
 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Mostrar Bonos</title>
</head>
<body>
    <Style>
      body{
                   background-image: url("../Imagenes/FondoEnfermeria.PNG"); 
                     background-size: cover;
                     

             }
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: 0.25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }
        .auto-style2 {
            width: 228px;
        }
        .auto-style3 {
            text-align: right;
            width: 333px;
        }
        .auto-style4 {
            width: 333px;
            text-align: center;
        }
        .auto-style5 {
            width: 9px;
        }
      </Style>
    <form id="form1" runat="server">

         <h1 class="text-center" style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bold">Modulo Visitas</h1>
         <table class="w-100">
             <tr>
                 <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style2">
                     <asp:Label ID="lblUsuario" runat="server" Text="Usuario" Font-Bold="True" Font-Size="X-Large"></asp:Label>
                 </td>
                 <td>
                     &nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style5">&nbsp;</td>
                 <td class="auto-style2">
                     &nbsp;</td>
                 <td>
                     &nbsp;</td>
                 <td class="auto-style3">
                     &nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td class="auto-style5">&nbsp;</td>
                 <td colspan="2" style="font-size: x-large; color: #003300; background-color: #FFFFFF;">Visitas Completadas:&nbsp;&nbsp; <asp:Label ID="lblVisitasTerminadas" runat="server" CssClass="form-text" ForeColor="#003300" Text="NoVisitas" Width="206px"></asp:Label>
                 </td>
                 <td class="auto-style4" style="color: #663300; font-size: x-large; background-color: #FFFFFF;">Visitas Pendientes&nbsp;
                     <asp:Label ID="lblVisitasPendientes" runat="server" Text="NoVisitas"></asp:Label>
                 </td>
                 <td>&nbsp;</td>
             </tr>
         </table>
         <br />
         <table class="w-100">
             <tr>
                 <td>&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="Button1" runat="server" CssClass="btn-secondary" OnClick="Button1_Click" Text="Volver Al Menu" Height="45px" />
                 </td>
                 <td class="text-right">
                     <asp:TextBox ID="txtBusqueda" runat="server" CssClass="auto-style1" Width="425px"></asp:TextBox>
                 </td>
             </tr>
         </table>
         <br/>

         <br/>
         <div class="container-fluid">
              <div class="table table-responsive bg-white">
        <asp:GridView ID="GridViewVisitasEnfermeria" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-light" DataKeyNames="IdVisita" DataSourceID="SqlDataSourceVisitas" OnPreRender="GridView_PreRender" OnSelectedIndexChanged="GridViewVisitasEnfermeria_SelectedIndexChanged" OnRowCommand="GridViewVisitasEnfermeria_RowCommand">
            <Columns>
                <asp:BoundField DataField="IdVisita" HeaderText="IdVisita" InsertVisible="False" ReadOnly="True" SortExpression="IdVisita" />
                <asp:BoundField DataField="RutPaciente" HeaderText="RutPaciente" SortExpression="RutPaciente" />
                <asp:BoundField DataField="NombrePaciente" HeaderText="NombrePaciente" SortExpression="NombrePaciente" />
                <asp:BoundField DataField="DireccionVisita" HeaderText="DireccionVisita" SortExpression="DireccionVisita" />
                <asp:BoundField DataField="Afiliacion" HeaderText="Afiliacion" SortExpression="Afiliacion" />
                <asp:BoundField DataField="FonoCliente" HeaderText="FonoCliente" SortExpression="FonoCliente" />
                <asp:BoundField DataField="NombreProfesional" HeaderText="NombreProfesional" SortExpression="NombreProfesional" />
                <asp:BoundField DataField="FechaVisita" HeaderText="FechaVisita" SortExpression="FechaVisita" />
                <asp:BoundField DataField="Procedimientos" HeaderText="Procedimientos" SortExpression="Procedimientos" />
                <asp:BoundField DataField="Medicamentos" HeaderText="Medicamentos" SortExpression="Medicamentos" />
                <asp:BoundField DataField="Insumos" HeaderText="Insumos" SortExpression="Insumos" />
                <asp:BoundField DataField="Tratamientos" HeaderText="Tratamientos" SortExpression="Tratamientos" />
                <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                <asp:ButtonField ButtonType="Button" CommandName="Finalizar" Text="Finalizar">
                <ControlStyle CssClass="btn-primary" />
                </asp:ButtonField>
                <asp:ButtonField ButtonType="Button" CommandName="Pendientes" ShowHeader="True" Text="Pendiente">
                <ControlStyle CssClass="btn-warning" />
                </asp:ButtonField>
                <asp:ButtonField ButtonType="Button" CommandName="SinPago" Text="Sin Pago" />
            </Columns>
            <HeaderStyle CssClass="table-primary" />
        </asp:GridView>
                  <asp:SqlDataSource ID="SqlDataSourceVisitas" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionBD %>" 
                      SelectCommand="SELECT * FROM [VisitasEnfermeria]"
                      UpdateCommand="UPDATE VisitasEnfermeria SET Estado = 'Pendiente' WHERE (IdVisita = @IdVisita)">
                      <UpdateParameters>
                          <asp:Parameter Name="IdVisita" />
                      </UpdateParameters>
                  </asp:SqlDataSource>
        </div>
        <br />
        <br />
        
       
       
      </div>
        
    </form>

        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="bootstrap/js/popper.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
 
    <!-- Datatables-->
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
   
     <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= GridViewVisitasEnfermeria.ClientID %>').DataTable({
    
    
    language: {
      "sProcessing": "Procesando...",
      "sLengthMenu": "Mostrar _MENU_ resultados",
      "sZeroRecords": "No se encontraron resultados",
      "sEmptyTable": "Ningun dato disponible en esta tabla",
      "sInfo": "Mostrando resultados _START_-_END_ de  _TOTAL_",
      "sInfoEmpty": "Mostrando resultados del 0 al 0 de un total de 0 registros",
      "sInfoFiltered": "(filtrado de un total de _MAX_ registros)",
      "sSearch": "Buscar ",
      "sLoadingRecords": "Cargando...",
      "oPaginate": {
        "sFirst": "Primero",
        "sLast": "Ultimo",
        "sNext": "Siguiente",
        "sPrevious": "Anterior"
      },
      "iDisplayLength": 50, 
      "processing": true,
      "serverSide": true,
    }
  });
        });
        
    </script>
</html>

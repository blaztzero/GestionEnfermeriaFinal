<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarBonos.aspx.cs" Inherits="GestionEnfermeriaFinal.MostrarBonos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Solo CSS  -->

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
      </Style>
    <form id="form1" runat="server">

         <h1 class="text-center" style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bold">Mostrar Bonos</h1>
         <table class="w-100">
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td class="text-right">
                     <asp:Label ID="lblUsuario" runat="server" Text="Usuario"></asp:Label>
                 </td>
                 <td class="text-right">&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
         </table>
         <br/>

         <br/>
         <div class="container-fluid">
              <div class="table table-responsive bg-white">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table table-striped table-light" DataKeyNames="idBonoFonasa" DataSourceID="SqlDataSource1" OnPreRender="GridView_PreRender">
            <Columns>
                <asp:BoundField DataField="idBonoFonasa" HeaderText="idBonoFonasa" InsertVisible="False" ReadOnly="True" SortExpression="idBonoFonasa" />
                <asp:BoundField DataField="rutBeneficiario" HeaderText="rutBeneficiario" SortExpression="rutBeneficiario" />
                <asp:BoundField DataField="nombreBeneficiario" HeaderText="nombreBeneficiario" SortExpression="nombreBeneficiario" />
                <asp:BoundField DataField="rutTitular" HeaderText="rutTitular" SortExpression="rutTitular" />
                <asp:BoundField DataField="nombreTitular" HeaderText="nombreTitular" SortExpression="nombreTitular" />
                <asp:BoundField DataField="rutPrestador" HeaderText="rutPrestador" SortExpression="rutPrestador" />
                <asp:BoundField DataField="nombrePrestador" HeaderText="nombrePrestador" SortExpression="nombrePrestador" />
                <asp:BoundField DataField="prestacionMedica" HeaderText="prestacionMedica" SortExpression="prestacionMedica" />
                <asp:BoundField DataField="valorTotal" HeaderText="valorTotal" SortExpression="valorTotal" />
                <asp:BoundField DataField="nivel" HeaderText="nivel" SortExpression="nivel" />
                <asp:BoundField DataField="folio" HeaderText="folio" SortExpression="folio" />
                <asp:BoundField DataField="fechaHoraIngreso" HeaderText="fechaHoraIngreso" SortExpression="fechaHoraIngreso" />
            </Columns>
            <HeaderStyle CssClass="table-primary" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionBD %>" SelectCommand="SELECT * FROM [BonosFonasa]"></asp:SqlDataSource>
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
            $('#<%= GridView1.ClientID %>').DataTable({
    
    
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


</Style>
</html>

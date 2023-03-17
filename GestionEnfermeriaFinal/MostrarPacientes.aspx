<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarPacientes.aspx.cs" Inherits="GestionEnfermeriaFinal.MostrarPacientes" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
         body{
                   background-image: url("../Imagenes/FondoLogin.jpg"); 
                     background-size: cover;

             }
           
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 121px;
        }
        .auto-style7 {
            width: 415px;
        }
        .auto-style12 {
            width: 34px;
        }
        </style>
</head>
<body>
    <form id="form5" runat="server">
        <div style="font-family: 'Arial Black'; font-size: x-large; font-weight: bold; font-style: italic; font-variant: normal; text-align: center; color: #000066; background-color: #0099CC">
            Listado De Pacientes En Base de Datos</div>
        <br />
        <div class="container">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">Buscar Rut</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtBuscarRut" runat="server" Width="370px" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnBuscarPorRut" runat="server" OnClick="BtnBuscarPorRut_Click" Text="Buscar Rut" CssClass="btn-primary" />
                    </td>
                    <td>
                        <asp:Button ID="BtnVolver" runat="server" CssClass="btn-secondary" OnClick="BtnVolver_Click" Text="Volver al Menu" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">Buscar Nombre</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtBuscarNombre" runat="server" Width="372px" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnBuscarNombre" runat="server" Text="BuscarNombre" CssClass="btn-success" OnClick="BtnBuscarNombre_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
    <table class="auto-style5">
        <tr>
            <td >&nbsp;</td>
            <td colspan="3">&nbsp;</td>
           
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3" >
                <div class="text-left">
                <asp:GridView ID="GridViewTablaPacientes" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" CssClass="table-primary" Height="259px" Width="1022px" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridViewTablaPacientes_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Rut" HeaderText="Rut" SortExpression="Rut" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                        <asp:BoundField DataField="Ciudad" HeaderText="Ciudad" SortExpression="Ciudad" />
                        <asp:BoundField DataField="Fono" HeaderText="Fono" SortExpression="Fono" />
                        <asp:BoundField DataField="Afiliacion" HeaderText="Afiliacion" SortExpression="Afiliacion" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionBD %>" SelectCommand="SELECT [Rut], [Nombre], [Direccion], [Ciudad], [Fono], [Afiliacion] FROM [pacientes]"></asp:SqlDataSource>
                </div>
            </td>
         
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="text-justify" rowspan="3">
                &nbsp;</td>
            <td class="text-justify" rowspan="3">
                &nbsp;</td>
            <td class="text-justify" rowspan="3">
                &nbsp;</td>
          </tr>
    </table>
            </div>
    </form>
    </body>
   

</html>

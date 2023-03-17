<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidarPagos.aspx.cs" Inherits="GestionEnfermeriaFinal.ValidarPagos" %>

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
        <div class="container-fluid">
            <table class="auto-style5">
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style6">Buscar Visitas</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="TxtBuscarNombre" runat="server" Width="372px" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="BtnBuscarNombre" runat="server" Text="BuscarVisitas" CssClass="btn-success" OnClick="BtnBuscarNombre_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />

                <asp:GridView ID="GridViewTablaPacientes" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceVisitas" CssClass="table table-responsive" Height="420px" Width="1022px" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-right: 82px">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="RutPaciente" HeaderText="RutPaciente" SortExpression="RutPaciente" />
                        <asp:BoundField DataField="NombrePaciente" HeaderText="NombrePaciente" SortExpression="NombrePaciente" />
                        <asp:BoundField DataField="DireccionVisita" HeaderText="DireccionVisita" SortExpression="DireccionVisita" />
                        <asp:BoundField DataField="Afiliacion" HeaderText="Afiliacion" SortExpression="Afiliacion" />
                        <asp:BoundField DataField="NombreProfesional" HeaderText="NombreProfesional" SortExpression="NombreProfesional" />
                        <asp:BoundField DataField="FechaVisita" HeaderText="FechaVisita" SortExpression="FechaVisita" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" />
                        <asp:CommandField ButtonType="Button" ShowEditButton="True" ShowSelectButton="True" >
                        <HeaderStyle Width="100px" />
                        </asp:CommandField>
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
    <table>
        <tr>
            <td >&nbsp;</td>
            <td colspan="3">&nbsp;</td>
           
            
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="3" >
                <div class="text-left">
                    <asp:SqlDataSource ID="SqlDataSourceVisitas" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionBD %>" SelectCommand="SELECT [RutPaciente], [NombrePaciente], [DireccionVisita], [Afiliacion], [NombreProfesional], [FechaVisita], [Estado] FROM [VisitasEnfermeria] WHERE ([Estado] = @Estado)" UpdateCommand="UPDATE VisitasEnfermeria SET Estado = @Estado WHERE (RutPaciente = @RutPaciente)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="Pendiente" Name="Estado" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="RutPaciente" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
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


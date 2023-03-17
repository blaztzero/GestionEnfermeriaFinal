<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModuloUsuarios.aspx.cs" Inherits="GestionEnfermeriaFinal.ModuloUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />
    <title>Mantenedor Usuarios</title>
</head>
<body>
    <style>
             body{
                   background-image: url("../Imagenes/FondoEnfermeria.PNG"); 
                     background-size: cover;
                     

             }
           
              .auto-style23 {
            width: 274px;
        }
           
              .auto-style25 {
            width: 100%;
            height: 285px;
        }
           
              .auto-style30 {
            width: 1544px;
        }
        .auto-style34 {
            text-align: center;
            width: 644px;
        }
        .auto-style35 {
            width: 644px;
        }
           
              .auto-style36 {
            font-family: "Arial Black";
            font-weight: bold;
            font-size: x-large;
            width: 431px;
        }
        .auto-style37 {
            width: 431px;
        }
                   
              .auto-style52 {
            width: 98%;
            padding-right: 15px;
            padding-left: 15px;
            margin-right: auto;
            margin-left: auto;
        }
           
              .auto-style63 {
            font-family: "Arial Black";
            font-weight: bold;
            font-size: x-large;
            text-align: center;
        }
           
              </style>
    
    <form id="form1" runat="server">
        <div style="text-align: center; background-color: #000099; color: #000099;" class="navbar-nav">
           <h1 class="text-right" style="font-family: 'Arial Black'; color: #FFFFFF; font-size: xx-large"> Gestion de Usuarios&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Label ID="LblTotalRegistros" runat="server" Text="Total De Registros 'No se'"></asp:Label>&nbsp;&nbsp;
            </h1></div>
      
        <div class ="container container-fluid">
        <table class="auto-style1" >
            <tr>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style37" style="font-family: 'Arial Black'; font-size: medium; font-weight: bold">
                    Usuario</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TxtNombreUsuario" runat="server"  CssClass="form-control" Width="238px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:Button ID="BtnBucarNombreUsuario" runat="server" CssClass="btn-info"  Text="Buscar " OnClick="BtnBucarNombreUsuario_Click" />
                </td>
               
            </tr>
            <tr>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style37" style="font-family: 'Arial Black'; font-size: medium; font-weight: bold">Nombre Usuario</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TxtNombre" runat="server" Width="388px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">&nbsp;</td>
                <td class="auto-style37" style="font-family: 'Arial Black'; font-size: medium; font-weight: bold">Apellidos</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TxtApellidos" runat="server" CssClass="form-control" Width="374px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style36" style="font-size: medium">Clave</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TxtClave" runat="server" Width="388px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style36" style="font-size: medium">Tipo de Usuario</td>
                <td class="auto-style3" colspan="2">
                    <asp:DropDownList ID="cboTipoUsuario" runat="server"  CssClass="form-control" Width="416px">
                        <asp:ListItem>Administrador</asp:ListItem>
                        <asp:ListItem>Usuario</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style30">
                    &nbsp;</td>
                <td class="auto-style63" style="font-size: medium" colspan="3">
                    <asp:Button ID="BtnGuardarUsuario" runat="server" CssClass="btn-primary" Text="Guardar" OnClick="BtnGuardarUsuario_Click" />
                    <asp:Button ID="BtnModificar" runat="server" CssClass="btn-secondary" Text="Modificar" />
                    <asp:Button ID="BtnEliminar" runat="server" CssClass="btn-danger" Text="Eliminar" OnClick="BtnEliminar_Click1" />
                </td>
            </tr>
            </table>
    
   
        </div>
    <div class="auto-style52">
    <table class="auto-style25">
        <tr>
            <td class="auto-style34">&nbsp;</td>
            
            <td class="text-center" rowspan="2">
                <div class="text-left">
                    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdUsuario" DataSourceID="SqlDataSourceGridViewUsuarios" ForeColor="#333333" GridLines="None" Width="796px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Height="312px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" InsertVisible="False" ReadOnly="True" SortExpression="IdUsuario" />
                            <asp:BoundField DataField="NombreUsuario" HeaderText="NombreUsuario" SortExpression="NombreUsuario" />
                            <asp:BoundField DataField="Clave" HeaderText="Clave" SortExpression="Clave" Visible="False" />
                            <asp:BoundField DataField="TipoUsuario" HeaderText="TipoUsuario" SortExpression="TipoUsuario" />
                            <asp:BoundField DataField="Nombres" HeaderText="Nombres" SortExpression="Nombres" />
                            <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" SortExpression="Apellidos" />
                            <asp:ButtonField ButtonType="Button" CommandName="Select" Text="Editar" />
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
                <asp:SqlDataSource ID="SqlDataSourceGridViewUsuarios" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionBD %>" SelectCommand="SELECT * FROM [Usuarios]"></asp:SqlDataSource>
                </div>
            </td>
            
        </tr>
        <tr>
            <td class="auto-style35">&nbsp;</td>
           
        </tr>
        </table>
 
    
    </div>

    
    
    
    </form>
</html>

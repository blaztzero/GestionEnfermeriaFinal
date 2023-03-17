<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistarBonos.aspx.cs" Inherits="GestionEnfermeriaFinal.RegistarBonos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"/>

    <style type="text/css">
        body{
                   background-image: url("../Imagenes/FondoEnfermeria.PNG"); 
                     background-size: cover;
                     

             }
        .auto-style1 {
            width: 100%;
            height: 480px;
        }
        .auto-style9 {
            height: 40px;
            width: 121px;
        }
        .auto-style10 {
            height: 41px;
            width: 121px;
        }
        .auto-style11 {
            width: 121px;
            height: 48px;
        }
        .auto-style15 {
            height: 40px;
            width: 257px;
        }
        .auto-style16 {
            height: 41px;
            width: 257px;
        }
        .auto-style17 {
            width: 257px;
            height: 48px;
        }
        .auto-style23 {
            height: 14px;
            width: 121px;
        }
        .auto-style24 {
            height: 14px;
            width: 257px;
        }
        .auto-style29 {
            height: 40px;
            width: 400px;
        }
        .auto-style30 {
            height: 41px;
            width: 400px;
        }
        .auto-style32 {
            height: 14px;
            width: 400px;
        }
        .auto-style33 {
            height: 48px;
            width: 400px;
        }
        .auto-style35 {
            height: 48px;
        }
        .auto-style36 {
            height: 40px;
            text-align: left;
        }
        .auto-style37 {
            height: 40px;
            width: 5px;
        }
        .auto-style38 {
            height: 41px;
            width: 5px;
        }
        .auto-style39 {
            height: 48px;
            width: 5px;
        }
        .auto-style40 {
            height: 14px;
            width: 5px;
        }
        .auto-style42 {
            height: 41px;
            width: 13px;
        }
        .auto-style44 {
            height: 14px;
            width: 13px;
        }
        .auto-style45 {
            height: 40px;
            width: 13px;
        }
        .auto-style46 {
            height: 48px;
            width: 13px;
        }
        .auto-style47 {
            margin-left: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="font-family: 'Arial Rounded MT Bold'; font-size: xx-large; font-weight: bold; text-align: justify">
            <p class="auto-style47" style="font-size: xx-large; font-family: 'Arial Black'; font-weight: bold; color: #3333CC; font-style: italic">
                Registrar Bonos Fonasa</p>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Rut Beneficiario</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtRutBeneficiario" runat="server" Width="335px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style36" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Nombre</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtNombre" runat="server" Width="335px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style10" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Rut Titular</td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtRutTitular" runat="server" Width="335px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style38"></td>
                <td class="auto-style42"></td>
            </tr>
            <tr>
                <td class="auto-style30"></td>
                <td class="auto-style10" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Nombre Titular</td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtNombreTitular" runat="server" Width="335px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style38"></td>
                <td class="auto-style42"></td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Rut Prestador</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtRutPrestador" runat="server" Width="335px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Nombre Prestador</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtNombrePrestador" runat="server" Width="335px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Prestacion Medica</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtPrestacionMedica" runat="server" Width="335px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Valor Total</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtValortotal" runat="server" Width="157px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Nivel Bono</td>
                <td class="auto-style15">
                    <asp:DropDownList ID="cboNivelBono" runat="server" CssClass="form-control" Width="155px">
                        <asp:ListItem>Nivel 1</asp:ListItem>
                        <asp:ListItem>Nivel 2</asp:ListItem>
                        <asp:ListItem>Nivel 3</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style29"></td>
                <td class="auto-style9" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Folio Bono</td>
                <td class="auto-style15">
                    <asp:TextBox ID="txtFolioBono" runat="server" Width="250px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style37"></td>
                <td class="auto-style45"></td>
            </tr>
            <tr>
                <td class="auto-style33"></td>
                <td class="auto-style11" style="font-family: 'Arial Rounded MT Bold'; font-weight: bold; font-size: large;">Fecha Hora Ingreso</td>
                <td class="auto-style17">
                    <asp:Label ID="LblFechaHoraBono" runat="server" Text="Fecha y Hora"></asp:Label>
                </td>
                <td class="auto-style39"></td>
                <td class="auto-style46"></td>
            </tr>
            <tr>
                <td class="auto-style32"></td>
                <td class="auto-style23"></td>
                <td class="auto-style24"></td>
                <td class="auto-style40"></td>
                <td class="auto-style44"></td>
            </tr>
            <tr>
                <td class="auto-style33">&nbsp;</td>
                <td class="auto-style35" colspan="4">
                    <asp:Button ID="btnMenuPrincipal" runat="server" Height="32px" Text="Volver Al Menu" Width="140px" CssClass="btn-secondary" OnClick="btnMenuPrincipal_Click" />
                    &nbsp;&nbsp;&nbsp;    
                    <asp:Button ID="BtnModificarBono" runat="server" Height="33px" Text="Actualizar" Width="129px" CssClass="btn-info" OnClick="BtnModificarBono_Click" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnGuardarBono" runat="server" Height="33px" Text="Registrar " Width="169px" CssClass="btn-success" OnClick="BtnGuardarBono_Click" />
                &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnEliminarBono" runat="server" Height="32px" Text="Eliminar" Width="113px" CssClass="btn-danger" OnClick="BtnEliminarBono_Click" />     
                     &nbsp;
                    <asp:Button ID="btnListar" runat="server" CssClass="btn-warning" Text="ListarBonos" Width="127px" OnClick="btnListar_Click" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

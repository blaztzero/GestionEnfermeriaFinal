<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarVisita.aspx.cs" Inherits="GestionEnfermeriaFinal.RegistrarVisita" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<%--  --%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
         body{
                   background-image: url("../Imagenes/FondoLogin.jpg"); 
                     background-size: cover;

             }
        .auto-style8 {
            width: 470px;
        }
        .auto-style13 {
            width: 39px;
            height: 45px;
        }
        .auto-style14 {
            width: 19px;
            height: 47px;
        }
        .auto-style17 {
            width: 39px;
            height: 47px;
        }
        .auto-style31 {
            width: 19px;
            height: 144px;
        }
        .auto-style32 {
            height: 144px;
            width: 101px;
        }
        .auto-style33 {
            width: 39px;
            height: 144px;
        }
        .auto-style36 {
            height: 61px;
        }
        .auto-style37 {
            width: 470px;
            height: 61px;
        }
        .auto-style38 {
            width: 19px;
            height: 61px;
        }
        .auto-style39 {
            width: 39px;
            height: 61px;
        }
        .auto-style47 {
            height: 19px;
        }
        .auto-style60 {
            width: 1092px;
            height: 37px;
        }
        .auto-style65 {
            width: 101px;
            height: 47px;
        }
        .auto-style66 {
            width: 238px;
        }
        .auto-style67 {
            height: 25px;
            width: 238px;
        }
        .auto-style68 {
            height: 45px;
        }
        .auto-style71 {
            height: 93px;
        }
        .auto-style73 {
            height: 25px;
        }
        .auto-style76 {
            width: 470px;
            height: 25px;
        }
        .auto-style82 {
            width: 19px;
            height: 19px;
        }
        .auto-style83 {
            width: 101px;
            height: 19px;
        }
        .auto-style84 {
            width: 39px;
            height: 19px;
        }
        .auto-style85 {
            width: 19px;
            height: 29px;
        }
        .auto-style86 {
            height: 29px;
            width: 101px;
        }
        .auto-style88 {
            width: 39px;
            height: 29px;
        }
        .auto-style89 {
            width: 19px;
            height: 25px;
        }
        .auto-style90 {
            height: 25px;
            width: 101px;
        }
        .auto-style91 {
            width: 39px;
            height: 25px;
        }
        .auto-style93 {
            height: 29px;
        }
        .auto-style95 {
            width: 101px;
            height: 61px;
        }
        .auto-style102 {
            width: 1045px;
            height: 1151px;
        }
        </style>

</head>
<body>
    <div class="container">
    <form id="form1" runat="server" class="auto-style102" style="background-color: #FFFFFF">
        <div style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bold; font-style: normal; text-align: center; background-color: #0066FF; background-image: none; border-style: inherit; border-width: inherit; border-color: #009999; color: #FFFFFF;">
            Registro de Visitas de Enfermeria</div>
        <table align="center" cellspacing="3" class="table-primary">
            <tr>
                <td class="auto-style41" colspan="2" style="font-size: xx-large; font-family: 'Arial Black'">&nbsp;&nbsp; Paciente:</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style104">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style56" style="font-size: large">&nbsp;Rut: </td>
                <td class="auto-style57">
                    <asp:TextBox ID="TxtRutPaciente" runat="server" Width="230px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style58">
                    <asp:Button ID="Button3" runat="server" Height="29px" OnClick="Button3_Click" Text="Buscar" Width="146px" CssClass="btn-primary" />
                </td>
                <td class="auto-style59"></td>
                <td class="auto-style103"></td>
                <td class="auto-style59"></td>
                <td class="auto-style105"></td>
            </tr>
            <tr>
                <td class="auto-style53" style="font-size: large">Nombre:</td>
                <td class="auto-style101" colspan="3">
                    <asp:TextBox ID="TxtNombrePaciente" runat="server" Width="502px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style55" style="font-size: large">Afiliacion</td>
                <td class="auto-style54">
                    <asp:TextBox ID="TxtAfiliacion" runat="server" Width="230px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style106"></td>
            </tr>
            <tr>
                <td class="auto-style48" style="font-size: large">Direccion:</td>
                <td class="auto-style50" colspan="2">
                    <asp:TextBox ID="TxtDireccionPaciente" runat="server" Width="501px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style50"></td>
                <td class="auto-style49" style="font-size: large">Telefono</td>
                <td class="auto-style50">
                    <asp:TextBox ID="TxtTelefonoPaciente" runat="server" Width="230px" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="auto-style107"></td>
            </tr>
            <tr>
                <td class="auto-style100">&nbsp;</td>
                <td class="auto-style99">&nbsp;</td>
                <td class="auto-style98">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style97">&nbsp;</td>
                <td class="auto-style41">&nbsp;</td>
                <td class="auto-style108">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style115" style="font-size: large">Profesional</td>
                <td class="auto-style111">
                    <asp:DropDownList ID="cboProfesional" runat="server" Height="30px" Width="278px" CssClass="auto-style119">
                        <asp:ListItem>Tens Rodolfo Cabezas</asp:ListItem>
                        <asp:ListItem>Enfermera Natalia Quinteros</asp:ListItem>
                        <asp:ListItem>Tens Nicolas Martines</asp:ListItem>
                        <asp:ListItem>Tens Angi Vasquez</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style112"></td>
                <td class="auto-style118"></td>
                <td class="auto-style114" style="font-size: large">Fecha Visita</td>
                <td class="auto-style118">&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LblFechaVisita" runat="server" Font-Bold="True" Font-Size="Large" Text="01 de julio 2022"></asp:Label>
                </td>
                <td class="auto-style117"></td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style104">&nbsp;</td>
            </tr>
        </table>
        <br />
        <table border="0" class="auto-style60" style="background-color: #C0C0C0; border-style: hidden; border-color: #C0C0C0">
            <tr>
                <td class="auto-style68" colspan="4" style="background-color: #CECECE; font-family: 'Arial Black'; font-size: xx-large;">&nbsp; Prestaciones:</td>
                <td class="auto-style13" style="background-color: #D2D2D2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style47" colspan="5" style="background-color: #D2D2D2"></td>
            </tr>
            <tr>
                <td class="auto-style82" style="background-color: #CECECE">&nbsp;</td>
                <td class="auto-style83" style="background-color: #CECECE">&nbsp;Procedimientos</td>
                <td class="auto-style71" colspan="2" rowspan="3" style="background-color: #CECECE" CssClass="form-control">
                    &nbsp;
                    <asp:TextBox ID="TxtProcedimiento" mode="multiline" runat="server" Height="90px" Width="1165px" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style84" style="background-color: #D2D2D2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style82" style="background-color: #CECECE">&nbsp;</td>
                <td class="auto-style83" style="background-color: #CECECE">&nbsp;</td>
                <td class="auto-style84" style="background-color: #D2D2D2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14" style="background-color: #CECECE"></td>
                <td class="auto-style65" style="background-color: #CECECE"></td>
                <td class="auto-style17" style="background-color: #D2D2D2"></td>
            </tr>
            <tr>
                <td class="auto-style73" colspan="5" style="background-color: #D2D2D2"></td>
            </tr>
            <tr>
                <td class="auto-style85" style="background-color: #CECECE"></td>
                <td class="auto-style86" style="background-color: #CECECE">Medicamentos</td>
                <td class="auto-style66" rowspan="3" style="background-color: #CECECE">
                    <asp:TextBox ID="TxtMedicamentos" mode="multiline" runat="server" Height="166px" Width="443px" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style93" style="background-color: #CECECE">Insumos</td>
                <td class="auto-style88" style="background-color: #D2D2D2"></td>
            </tr>
            <tr>
                <td class="auto-style85" style="background-color: #CECECE">&nbsp;</td>
                <td class="auto-style86" style="background-color: #CECECE">&nbsp;</td>
                <td class="auto-style8" rowspan="2" style="background-color: #CECECE">&nbsp;<asp:TextBox ID="TxtInsumos" mode="multiline" runat="server" CssClass="form-control" Height="114px" Width="566px" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style88" style="background-color: #D2D2D2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38" style="background-color: #CECECE"></td>
                <td class="auto-style95" style="background-color: #CECECE"></td>
                <td class="auto-style39" style="background-color: #D2D2D2"></td>
            </tr>
            <tr>
                <td class="auto-style89" style="background-color: #CECECE">&nbsp;</td>
                <td class="auto-style90" style="background-color: #CECECE">Tratamiento</td>
                <td colspan="2" rowspan="2" style="background-color: #CECECE">
                    <asp:TextBox ID="TxtTratamiento"  mode="multiline" runat="server" Height="141px" Width="1161px" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="auto-style91" style="background-color: #D2D2D2">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style31" style="background-color: #CECECE"></td>
                <td class="auto-style32" style="background-color: #CECECE"></td>
                <td class="auto-style33" style="background-color: #D2D2D2"></td>
            </tr>
            <tr>
                <td class="auto-style73" colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style38"></td>
                <td class="auto-style36" colspan="2">
                    <asp:Button ID="BtnVolverMenu" runat="server" BackColor="#E1A900" BorderColor="#E1A900" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" ForeColor="Black" Height="57px" Text="Volver al menu" Width="253px" OnClick="BtnVolverMenu_Click"  />
                </td>
                <td class="auto-style37">
                    <asp:Button ID="BtnRegistrarVisita" runat="server" BackColor="#00A636" BorderStyle="Solid" Font-Bold="True" Font-Overline="False" Font-Size="Large" Font-Strikeout="False" Font-Underline="False" ForeColor="White" Height="62px" Text="Registrar Visita" Width="386px" OnClick="BtnRegistrarVisita_Click" />
                </td>
                <td class="auto-style39"></td>
            </tr>
            <tr>
                <td class="auto-style89">&nbsp;</td>
                <td class="auto-style90">&nbsp;</td>
                <td class="auto-style67">&nbsp;</td>
                <td class="auto-style76">&nbsp;</td>
                <td class="auto-style91">&nbsp;</td>
            </tr>
        </table>
    </form>
        </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>
</body>
</html>

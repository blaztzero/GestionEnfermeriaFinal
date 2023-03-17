<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pacientes.aspx.cs" Inherits="GestionEnfermeriaFinal.Pacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            border-style: solid;
            border-width: 1px;
            margin-top: 0px;
            height: 423px;
        }
        .auto-style2 {
            width: 107px;
        }
        .auto-style3 {
            width: 428px;
        }
        .auto-style4 {
            width: 45px;
        }
        .auto-style9 {
            height: 530px;
        }
        .auto-style10 {
            width: 107px;
            height: 23px;
        }
        .auto-style11 {
            width: 428px;
            height: 23px;
        }
        .auto-style12 {
            width: 45px;
            height: 23px;
        }
        .auto-style13 {
            height: 49px;
        }
        .auto-style14 {
            width: 45px;
            text-align: center;
        }
        .auto-style16 {
            width: 61px;
            height: 49px;
        }
        .auto-style20 {
            width: 251px;
        }
        </style>
     
</head>
<body>
    <style>
             body{
                   background-image: url("../Imagenes/FondoEnfermeria.PNG"); 
                     background-size: cover;
                     

             }
           
              .auto-style23 {
            width: 394px;
        }
           
              .auto-style24 {
            height: 49px;
            text-align: left;
        }
           
              .auto-style25 {
            width: 61px;
        }
        .auto-style26 {
            width: 61px;
            height: 23px;
        }
           
              </style>
    <div class ="container">
    <form id="form1" runat="server" class="auto-style9">
        <div style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; color: #000080; text-align: center; background-color: #66CCFF">
            Ingreso Pacientes</div>
        <p>
            &nbsp;</p>
        <table class="auto-style1" >
            <tr>
                <td class="auto-style25">
                    &nbsp;</td>
                <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: bold">
                    Rut</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TxtRut" runat="server"  CssClass="form-control" Width="238px"></asp:TextBox>
                </td>
                <td class="auto-style23">
                    <asp:Button ID="BtnBuscarRut" runat="server" CssClass="btn-info" OnClick="BtnBuscarRut_Click" Text="Buscar Paciente" />
                </td>
                <td class="auto-style14" rowspan="6" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Panel ID="Panel1" runat="server" Height="290px" Width="582px">
                        <div class="text-left">
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp; Registro de datos
                            <br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Peso&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtPeso" runat="server" CssClass="form-control-sm" Width="74px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp; Edad&nbsp;
                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control-sm" Width="74px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Altura(Mts)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="txtAltur" runat="server" CssClass="form-control-sm" Width="72px"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp; Sexo&nbsp;
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control-sm">
                                <asp:ListItem>Mujer</asp:ListItem>
                                <asp:ListItem>Hombre</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            <br />
                            &nbsp;&nbsp; Resultado:&nbsp;
                            <asp:Label ID="LblResultadoimc" runat="server" Text="imc"></asp:Label>
                            <br />
                            &nbsp;&nbsp;
                            <asp:Button ID="BtnCalcularImc" runat="server" CssClass="btn-primary" OnClick="BtnCalcularImc_Click" Text="Calcular IMC" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" CssClass="btn-success" Text="Grabar" />
                            &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" CssClass="btn-warning" Text="Limpiar" />
                            &nbsp;&nbsp; Fecha&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblFechaHora" runat="server" Text="Hora"></asp:Label>
                            <br />
                            <br />
                        </div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: bold">Nombre</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TxtNombre" runat="server" Width="388px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: bold">Direccion</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TxtDireccion" runat="server" Width="388px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: bold">Ciudad</td>
                <td class="auto-style3" colspan="2">
                    <asp:DropDownList ID="cboCiudad" runat="server"  CssClass="form-control" Width="416px">
                        <asp:ListItem>Santiago</asp:ListItem>
                        <asp:ListItem>Valparaiso</asp:ListItem>
                        <asp:ListItem>Temuco</asp:ListItem>
                        <asp:ListItem>Concepcion</asp:ListItem>
                        <asp:ListItem>talca</asp:ListItem>
                        <asp:ListItem>chillan</asp:ListItem>
                        <asp:ListItem>La Serena</asp:ListItem>
                        <asp:ListItem>Villarica</asp:ListItem>
                        <asp:ListItem>Pucon</asp:ListItem>
                        <asp:ListItem>Curico</asp:ListItem>
                        <asp:ListItem>Puerto varas</asp:ListItem>
                        <asp:ListItem>Puerto montt</asp:ListItem>
                        <asp:ListItem>Coquinbo</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2" style="font-family: 'Arial Black'; font-size: x-large; font-weight: bold">Fono</td>
                <td class="auto-style3" colspan="2">
                    <asp:TextBox ID="TxtFono" runat="server" Width="224px" CssClass="form-control"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">&nbsp;</td>
                <td class="auto-style2" style="font-family: 'Arial Black'; font-size: xx-large; font-weight: bold">Afiliacion</td>
                <td class="auto-style3" colspan="2">
                    <asp:DropDownList ID="cboAfiliacion" runat="server" CssClass="form-control" Width="426px">
                        <asp:ListItem>Fonasa A</asp:ListItem>
                        <asp:ListItem>Fonasa B</asp:ListItem>
                        <asp:ListItem>Fonasa C</asp:ListItem>
                        <asp:ListItem>Fonasa D</asp:ListItem>
                        <asp:ListItem>Isapre</asp:ListItem>
                        <asp:ListItem>Particular</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style25">
                    &nbsp;</td>
                <td colspan="3" rowspan="2" class="text-center">
                    &nbsp;<asp:Button ID="btnGrabarDatos" runat="server" Text="Grabar Datos" OnClick="btnGrabarDatos_Click" Width="127px"  CssClass="btn-primary" />
                    &nbsp;<asp:Button ID="BtnActualizarDatos" runat="server" OnClick="BtnActualizarDatos_Click" Text="Actualizar Datos" Width="160px" Height="35px" CssClass = "btn-success " />
                    &nbsp;<asp:Button ID="BtnEliminar" runat="server" Text="Eliminar Datos" OnClick="BtnEliminar_Click" Width="149px" CssClass="btn-danger"/>
                &nbsp;
                    <asp:Button ID="BtnLimpiar" runat="server" CssClass="btn-warning" OnClick="BtnLimpiar_Click" Text="Limpiar" Width="133px" />
                </td>
                <td class="auto-style4" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">
                    &nbsp;</td>
                <td class="auto-style24">
                    <asp:Button ID="BtnSalir" runat="server" Text="Salir" OnClick="BtnSalir_Click" Width="186px"  CssClass="btn-secondary" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnListarPacientes" runat="server" Text="Ver Pacientes" Width="187px"  CssClass="btn-warning" OnClick="btnVerPacientes_Click" />
                    </td>
                <td class="auto-style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style26">&nbsp;</td>
                <td class="auto-style10"></td>
                <td class="auto-style11" colspan="2"></td>
                <td class="auto-style12" colspan="2"></td>
            </tr>
            </table>
    </form>
    <p>
&nbsp;
    </p>
        </div>
</body>
</html>


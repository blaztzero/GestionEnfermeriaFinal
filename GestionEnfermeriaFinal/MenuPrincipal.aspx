<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPrincipal.aspx.cs" Inherits="GestionEnfermeriaFinal.MenuPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style14 {
            width: 325px;
            height: 23px;
        }
        .auto-style19 {
            width: 217px;
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
        }
        .auto-style15 {
            width: 325px;
        }
        </style>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"/>
     <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="bootstrap/js/popper.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
 
    <!-- Datatables-->
    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function(){
  

        if ($("body").height() < $(window).height()) {
        
            //$('#footer').css({"position": "absolute", "bottom":"0px"});
    }
});
</script>

</head>
<body>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
    <title>Menu Principal</title>
    <style type="text/css">

        .auto-style13 {
            height: 23px;
        }
        .auto-style14 {
            width: 325px;
            height: 23px;
        }
        .auto-style15 {
            width: 325px;
        }
        .auto-style19 {
            width: 217px;
            height: 23px;
        }
        .auto-style21 {
            width: 325px;
            height: 23px;
        }
        .auto-style22 {
            width: 217px;
            height: 23px;
        }
        .auto-style23 {
            height: 23px;
        }
        .auto-style24 {
            width: 1169px;
            height: 191px;
        }
        .auto-style25 {
            width: 386px;
        }
        </style>
     <style>
             body{
                   background-image: url("../Imagenes/FondoEnfermeria.PNG"); 
                     background-size: cover;

             }
           
              .auto-style54 {
             height: 535px;
         }
           
              </style>
    <form id="form7" runat="server">
        <div style="font-size: xx-large; font-weight: bold; color: #0000FF; text-align: center; background-color: #FFFFFF">
            Bienvenido al Sistema de Gestion de Enfermeria<br />
        </div>
        <br />
        <div class="container-fuid"
        <table class="auto-style1">
            <div class="text-right">
            <tr>
                <td class="auto-style18">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LblBienvenida" runat="server" Font-Size="X-Large" Text="Bienvenido " Font-Bold="True" Font-Italic="True" ForeColor="Black"></asp:Label>
                &nbsp;
                </td>
                <td class="auto-style2" style="text-align: center">
                    <asp:Button ID="BtnProcedimientos" runat="server" OnClick="Button1_Click" Text="Procedimientos" CssClass="btn-primary" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="BtnPacientes" runat="server" OnClick="BtnPacientes_Click" Text="Pacientes" CssClass="btn-info" />
                </td>
                <td class="auto-style7">
                    <asp:Button ID="BtnBonos" runat="server"  Text="Bonos" CssClass="btn-success" OnClick="BtnBonos_Click" />
                </td>
                <td class="auto-style5">
                    <asp:Button ID="BtnPtofesionales" runat="server" OnClick="BtnPtofesionales_Click" Text="Profesionales" CssClass="btn-warning" />
                </td>
                <td class="auto-style6">
                    <asp:Button ID="BtnVisitas" runat="server" OnClick="BtnVisitas_Click" Text="Visitas" CssClass="btn-success" />
                &nbsp;&nbsp;&nbsp;
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
                <br />
            <br />
            <br />
            <br />
        <table align="right" class="auto-style24">
            <tr>
                
                <td class="auto-style25" rowspan="4"></td>

                <td class="auto-style14" style="font-family: 'Arial Black'; font-size: large; font-weight: normal; font-style: italic">Pacientes </td>
                <td class="auto-style19"></td>
                <td class="auto-style23" style="font-family: 'Arial Black'; font-size: large">Visitas Agendadas</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style21" style="text-align: right; font-family: 'Arial Rounded MT Bold'; font-size: large; font-weight: bold;">841</td>
                <td class="auto-style22"></td>
                <td class="auto-style23" style="text-align: right; font-size: large; font-weight: bold; font-family: 'Arial Rounded MT Bold';">316</td>
                <td class="auto-style23" style="text-align: right">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15" style="font-family: 'Arial Rounded MT Bold'; font-size: large; font-weight: bold; color: #0000FF">Pago con bonos Fonasa</td>
                <td class="auto-style19">&nbsp;</td>
                <td style="font-family: 'Arial Rounded MT Bold'; font-size: large; font-weight: bold; color: #0000FF">Visitas Completadas</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15" style="text-align: right; font-family: 'Arial Rounded MT Bold'; font-size: large; font-weight: bold; color: #0000FF;">416</td>
                <td class="auto-style19">&nbsp;</td>
                <td style="text-align: right; font-family: 'Arial Rounded MT Bold'; font-size: large; color: #0000FF; font-weight: bold;">86%</td>
                <td style="text-align: right">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
   
       
    <footer>
        
                    <asp:Button ID="BtnAdministrarUsuarios" runat="server" CssClass="btn-success" Text="Administracion de Usuarios" OnClick="BtnAdministrarUsuarios_Click" />
                    <asp:Button ID="BtnValidacionPagos" runat="server" CssClass="btn-primary" Text="Validacion de Pagos" OnClick="BtnValidacionPagos_Click" />
                    <asp:Button ID="BtnPresupuestos" runat="server" CssClass="btn-secondary" Text="Presupuestos" />
                    <asp:Button ID="BtnConfig" runat="server" CssClass="btn-warning" Text="Ver Visitas Registradas" OnClick="BtnConfig_Click" />
      
        

    </footer>
    </form>
     </body>
    
</html>

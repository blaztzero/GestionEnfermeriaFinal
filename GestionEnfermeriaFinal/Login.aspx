<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GestionEnfermeriaFinal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"/>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        
        <style type="text/css">
        .auto-style2 {
            width: 785px;
            margin-right: 41px;
        }
        .auto-style7 {
            height: 55px;
        }
        .auto-style8 {
            height: 19px;
        }
        .auto-style9 {
            width: 52px;
        }
        .auto-style11 {
            width: 52px;
            height: 26px;
        }
        </style><title> Formulario Inicio de Seccion</title>
         <style>
             body{
                   background-image: url("../Imagenes/FondoLogin.jpg"); 
                     background-size: cover;

             
           
              .auto-style18 {
                 height: 55px;
                 width: 307px;
             }
             .auto-style19 {
                 height: 19px;
                 width: 307px;
             }
             .auto-style20 {
                 width: 307px;
             }
             .auto-style21 {
                 width: 307px;
                 height: 26px;
             }
           
              .auto-style22 {
                 width: 119px;
             }
             .auto-style23 {
                 width: 119px;
                 height: 26px;
             }
             .auto-style24 {
                 display: block;
                 font-size: 1rem;
                 font-weight: 400;
                 line-height: 1.5;
                 color: #495057;
                 background-clip: padding-box;
                 border-radius: .25rem;
                 transition: none;
                 border: 1px solid #ced4da;
                 background-color: #fff;
             }
           
              </style>
    </head>    
    <body>
        <form id="form1" runat="server">
            
            <br/><br/><br/><center>
                <table border="0" class="auto-style2" style="border-style: none; border-color: #FFFFFF">
                    <tr>
                    <th colspan= "2" align="center" class="auto-style7"><h2><font color = "black">Iniciar Session </font></h2></th>
                    <th align="center" class="auto-style18">&nbsp;</th>
                        <tr>
                    <th colspan= "2" align="center" class="auto-style8"></th>
                    <th align="center" class="auto-style19">&nbsp;</th>
                        <tr>
                    <th align = "left" class="auto-style9" ><font color = "black">Usuario: </font></th>
                        <td class="auto-style22" id="txtnombre">&nbsp;<asp:TextBox ID="txtnombre" runat="server" Width="199px" CssClass="form-control"></asp:TextBox>
                            </td>
                        <td class="auto-style20" id="txtnombre">&nbsp;</td>
                    </tr>
                    <tr>
                        <th align = "left" class="auto-style11"><font color = "black">Contraseña: </font></th>
                        <td class="auto-style23">&nbsp;<asp:TextBox ID="txtPass" runat="server" Width="198px" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        </td>
                        <td class="auto-style21">&nbsp;</td>
                    </tr>
                    <tr>
                    <td colspan= "2">
                    	
                        <br />
                        <br />
                    	
                        <asp:Label ID="lblMostar" runat="server" Text="Ingrese Credenciales"></asp:Label>
                        <br />
                        <br />
                    	
                        <asp:RadioButton ID="RbtnAdministrador" runat="server" Text="Administrador" Checked="True" GroupName="rbtn1" />
                        <asp:RadioButton ID="RbtnUsuario" runat="server" Text="Usuario" GroupName="rbtn1" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        
                            <br />
                    	
                            <br />
                    	
                        <br />
                        
&nbsp;&nbsp;
                        <asp:Button ID="BtnIniciarSession" runat="server" Text="Iniciar Seccion" OnClick="Button1_Click" Width="145px" CssClass="btn-info" />
                    	
                        <br />
                        
                    	
                        <br />
                    	
                    </td>
                    <td class="auto-style20" rowspan="2">
                    	
                        &nbsp;</td>
                </center>	
                    <tr>
                    <td colspan= "2" class="text-right">
                    	
                        &nbsp;</td>
                    </table>
            </form>
        </a><br>

</body>
</html>

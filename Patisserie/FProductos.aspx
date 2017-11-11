<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FProductos.aspx.cs" Inherits="Patisserie.FProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            padding:0;
            margin:0;
        }
        img{
            width:252px;
            height: 180px;
            border-radius: 5px;
            border:solid 3px gray;
        }
        .auto-style5 {
            width: 335px;
            text-align: center;
        }
        .auto-style6 {
            width: 109px;
            text-align: center;
        }
        .auto-style7 {
            width: 252px;
            text-align: center;
        }
       .btn{
             cursor: pointer;
             margin: 5px;
             border-radius: 8px;
             text-decoration: none;
             padding: 10px;
             font-size: 15px;
             transition: .3s;
             -webkit-transition: .3s;
             -o-transition: .3s;
             color: #e74c3c;
             border: 2px #e74c3c solid;
       }
       .btn:hover{
           color: #fff;
           background-color: #e74c3c;
       }
       .titulo{
                    font-family: Verdana, sans-serif;
                    font-size: 33px;
                    margin-bottom: 0.5em;
                    text-align: center;
       }
    </style>
</head>
<body style="margin-right: 0px">
    <form id="form1" runat="server">

            <table style="width:100%;">            
                <tr>
                    <td class="auto-style7">
                        <img src="../img/blue.jpg" alt="Alternate Text" /></td>
                    <td class="auto-style5">
                        &nbsp;<img src="../img/fram.jpg" alt="Alternate Text" /></td>
                    <td class="auto-style6"><img src="../img/fresa.jpg" alt="Alternate Text" /></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="ButtonPayQueso" runat="server" Text="Agregar +1" OnClick="ButtonPayQueso_Click" CssClass="btn" OnClientClick="return alert('El producto Pay de Queso ha sido agregado satisfactoriamente');"/>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="ButtonCarlota" runat="server" Text="Agregar +1" OnClick="ButtonCarlota_Click" CssClass="btn" OnClientClick="return alert('El producto Carlota ha sido agregado satisfactoriamente');"/>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="ButtonPayFresa" runat="server" Text="Agregar +1" OnClick="ButtonPayFresa_Click" CssClass="btn" OnClientClick="return alert('El producto Pay de Fresa ha sido agregado satisfactoriamente');"/>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7"><img src="../img/peras.jpg" alt="Alternate Text" /></td>
                    <td class="auto-style5"><img src="../img/paypla.jpg" alt="Alternate Text" /></td>
                    <td class="auto-style6"><img src="../img/oreo.jpg" alt="Alternate Text" /></td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Button ID="ButtonStrudel" runat="server" Text="Agregar +1" OnClick="ButtonStrudel_Click" CssClass="btn" OnClientClick="return alert('El producto Strudel de Peras ha sido agregado satisfactoriamente');"/>
                    </td>
                    <td class="auto-style5">
                        <asp:Button ID="ButtonPayPlatano" runat="server" Text="Agregar +1" OnClick="ButtonPayPlatano_Click" CssClass="btn" OnClientClick="return alert('El producto Pay de Plátano ha sido agregado satisfactoriamente');"/>
                    </td>
                    <td class="auto-style6">
                        <asp:Button ID="ButtonPayOreo" runat="server" Text="Agregar +1" OnClick="ButtonPayOreo_Click" CssClass="btn" OnClientClick="return alert('El producto Pay de Oreo ha sido agregado satisfactoriamente');"/>
                    </td>
                </tr>
                 
            </table>
    </form>
</body>
</html>

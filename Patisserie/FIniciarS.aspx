<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FIniciarS.aspx.cs" Inherits="Patisserie.FIniciarS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
 
    <style type="text/css">
        body{
            padding:0;
            margin:0;
        }
        p {
            text-align: center;
            font-size: 20px;
            color: #2e1f1f;
        }

        i {
            color: #2e1f1f;
        }

        article {
            padding: 3em 3em;
            text-align: center;
            color: black;
            margin: 0 0;
        }

            article h1 {
                font-family: 'Alegreya Sans SC', sans-serif;
                font-size: 33px;
                margin-bottom: 0.5em;
                color: darkred;
            }

        .auto-style2 {
            width: 815px;
            height: 23px;
            text-align: right;
        }
        .auto-style3 {
            height: 23px;
            text-align: left;
        }
        .auto-style5 {
            text-align: left;
        }
        .auto-style7 {
            width: 815px;
            text-align: right;
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
             color: aliceblue;
             background-color: cornflowerblue;
       }
       .btn:hover{
           color: #fff;
           background-color: cadetblue;
       }
        .auto-style8 {
            height: 22px;
            width: 815px;
        }
        .auto-style9 {
            width: 815px;
            text-align: left;
            height: 22px;
        }
        .auto-style11 {
            width: 815px;
            text-align: right;
            height: 12px;
        }
        .auto-style12 {
            text-align: left;
            height: 12px;
        }
        
        .textbox1 {
             background: #F1F1F1;
             background-position: 5px -7px !important;
             padding: 8px 8px 8px 18px;
             width: 200px;
             border: 1px solid #CCC;
             -moz-border-radius: 5px;
             -webkit-border-radius: 5px;
             border-radius: 5px;
             -moz-box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #fff;
             -webkit-box-shadow: 0 1px 1px #CCC inset, 0 1px 0 #FFF;
             box-shadow: 0 1px 1px #CCC inset, 0 1px 0 #FFF;
        }
         .textbox1:focus {
             background-color: #FFF;
             border-color: #E8C291;
             outline: none;
             -moz-box-shadow: 0 0 0 1px #e8c291 inset;
             -webkit-box-shadow: 0 0 0 1px #E8C291 inset;
             box-shadow: 0 0 0 1px #E8C291 inset;
        }

        .auto-style17 {
            font-weight: normal;
        }
        td{
            font-family:Verdana;
        }
    </style>
</head>
<body>
    <article>
      <h1 class="auto-style17">Iniciar Sesión</h1>
      <i class="fa fa-star fa-lg" aria-hidden="true"></i><i class="fa fa-star fa-2x" aria-hidden="true"></i><i class="fa fa-star fa-lg" aria-hidden="true"></i>
      <p> </p>
    <form id="form1" runat="server">

        <div>
            <table style="width:100%;">
         
                <tr>
                    <td class="auto-style2">Usuario</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxUser" runat="server" CssClass="textbox1" Height="23px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11"></td>
                    <td class="auto-style12">
                        <asp:Label ID="LabelMensaje" runat="server" ForeColor="Red" Font-Size="12pt"></asp:Label>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style7">Contraseña</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TextBoxPassword" runat="server" CssClass="textbox1" Height="21px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:LinkButton ID="LinkButtonRegistrar" runat="server" Font-Size="12pt" Font-Underline="False" OnClick="LinkButtonRegistrar_Click">Ir a Registrar</asp:LinkButton>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">
                        <asp:Button ID="ButtonIngresar" runat="server" Text="Ingresar" CssClass="btn" OnClick="ButtonIngresar_Click" />
                    </td>
                    
                </tr>
            </table>
        </div>
    </form>
          </article>
</body>
</html>

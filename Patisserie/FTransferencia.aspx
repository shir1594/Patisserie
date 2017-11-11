<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FTransferencia.aspx.cs" Inherits="Patisserie.FTransferencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <style type="text/css">
        *{
            font-size: 20px;
            margin:0;
            padding:0;
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

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
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
             color: aliceblue;
             background-color: cornflowerblue;
       }
       .btn:hover{
           color: #fff;
           background-color: cadetblue;
       }
       .titulo {
                    font-family: Verdana, sans-serif;
                    font-size: 33px;
                    margin-bottom: 0.5em;
                    text-align: center;
                }
        .auto-style3 {
            font-weight: normal;
        }
    </style>
</head>
<body>
    <article>
      <h1 class="auto-style3">Transferencia</h1>
      <i class="fa fa-star fa-lg" aria-hidden="true"></i><i class="fa fa-star fa-2x" aria-hidden="true"></i><i class="fa fa-star fa-lg" aria-hidden="true"></i>
      <p> </p>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
 
                <tr>
                    <td class="auto-style2">
                        <asp:RadioButtonList ID="RadioButtonListPago" runat="server" Width="100%" OnSelectedIndexChanged="ButtonComprar_Click">
                            <asp:ListItem Selected="True">Con Tarjeta Registrada</asp:ListItem>
                            <asp:ListItem>Con Pago en Efectivo</asp:ListItem>
                        </asp:RadioButtonList>
                        <asp:TextBox ID="TextBoxEfectivo" runat="server" BackColor="#E8DFFF" BorderStyle="None" Visible="False"></asp:TextBox>
                        <br />
                        <asp:Button ID="ButtonComprar" runat="server" OnClick="ButtonComprar_Click" Text="Comprar" CssClass="btn" />
                    </td>
                    <td>
                        <table style="width:100%;">
                            <tr>
                                <td class="auto-style2">Subtotal:</td>
                                <td>
                                    <asp:Label ID="LabelSubtotal" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Gastos de Envìo:</td>
                                <td>
                                    <asp:Label ID="LabelGastosEnvio" runat="server"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">Total:</td>
                                <td>
                                    <asp:Label ID="LabelTotal" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </div>
    </form>
          </article>
</body>
</html>

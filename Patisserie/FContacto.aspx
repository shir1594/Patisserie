<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FContacto.aspx.cs" Inherits="Patisserie.FContacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            margin:0;
            padding:0;
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
        .auto-style1 {
            height: 22px;
            text-align: center;
        }
        .auto-style2 {
            width: 408px;
            height: 249px;
            background: #F1F1F1;
             padding: 8px 8px 8px 18px;
             width: 408px;
             border: 1px solid #CCC;
             -moz-border-radius: 5px;
             -webkit-border-radius: 5px;
             border-radius: 5px;
             -moz-box-shadow: 0 1px 1px #ccc inset, 0 1px 0 #fff;
             -webkit-box-shadow: 0 1px 1px #CCC inset, 0 1px 0 #FFF;
             box-shadow: 0 1px 1px #CCC inset, 0 1px 0 #FFF;
             resize: none;
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

        .auto-style3 {
            text-align: center;
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

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBoxEmail" placeholder="Email" runat="server" Width="408px" CssClass="textbox1" Font-Names="Verdana"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style1">
                        <textarea id="TextArea" aria-expanded="false" placeholder="Mensaje" aria-valuemax="100" Width="408px" class="auto-style2" name="TextArea" style="font-family: Verdana"></textarea></td>
                </tr>
                <tr>
                    <td class="auto-style1">
                            <asp:Button ID="ButtonEnviar" runat="server" Text="Enviar" CssClass="btn" OnClick="ButtonEnviar_Click" />
                    
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

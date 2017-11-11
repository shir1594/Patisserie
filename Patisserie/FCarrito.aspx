<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FCarrito.aspx.cs" Inherits="Patisserie.FCarrito" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Alegreya+Sans+SC" rel="stylesheet">
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

    <style>
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
        .auto-style2 {
            height: 35px;
            width: 100%;
        }
       
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
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

        .auto-style5 {
            font-weight: normal;
        }

        </style>
</head>
<body>
    <article>
      <h1 class="auto-style5">Carrito</h1>
      <i class="fa fa-star fa-lg" aria-hidden="true"></i><i class="fa fa-star fa-2x" aria-hidden="true"></i><i class="fa fa-star fa-lg" aria-hidden="true"></i>
      <p> </p>
      <form id="form1" runat="server">
        <div class="auto-style3">
        <div class="auto-style4">
        <div>
            <asp:GridView ID="GridViewCarritoCompras" runat="server" AutoGenerateColumns="False" Width="100%" DataKeyNames="IdProducto" ShowFooter="True" GridLines="None" OnRowCommand="GridViewCarritoCompras_RowCommand" OnRowDataBound="GridViewCarritoCompras_RowDataBound" EmptyDataText="No ha agregado productos." BackColor="#FFFF66" BorderColor="#333333" BorderStyle="Solid">
                <AlternatingRowStyle BorderStyle="None" />
                <Columns>
                    <asp:BoundField DataField="Descripcion" HeaderText="Producto" />
                    <asp:BoundField DataField="PrecioUnitario" HeaderText="Precio" />
                    <asp:TemplateField HeaderText="Cantidad">
                        <ItemTemplate>
                            <asp:TextBox ID="TextBoxCantidad" runat="server" Text='<%# Eval("Cantidad") %>'></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Total" HeaderText="Total" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButtonEliminar" runat="server" CommandArgument='<%# Eval("IdProducto") %>' CommandName="Eliminar" Font-Overline="False" Font-Underline="False" ForeColor="Red">X</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EmptyDataRowStyle BorderColor="Red" />
                <FooterStyle BackColor="#FF9933" />
                <HeaderStyle BackColor="#999966" />
                <SelectedRowStyle BorderColor="Red" BorderStyle="Solid" BorderWidth="2px" />
            </asp:GridView>
        </div>
        <div class="auto-style2"></div>
        <asp:Button ID="ButtonActualizar" runat="server" OnClick="ButtonActualizar_Click" Text="Actualizar" CssClass="btn" OnClientClick="return alert('Los datos han sido actualizados');"/>
            
        <asp:Button ID="ButtonComprar" runat="server" OnClick="ButtonComprar_Click" Text="Comprar" CssClass="btn" BackColor="#FF9966"/>
        

       
                            
        
        </div>
       
                            
        
    </form>
    </article>
</body>
</html>

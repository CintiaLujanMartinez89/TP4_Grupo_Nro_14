<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio2.aspx.cs" Inherits="TP4_Grupo_Nro_14.Ejercicio2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 36px;
        }
        .auto-style2 {
            margin-left: 21px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblIdProducto" runat="server" Text="Id Producto:"></asp:Label>
            <asp:DropDownList ID="ddlIdProducto" runat="server" CssClass="auto-style1">
                <asp:ListItem Value="=">Igual a:</asp:ListItem>
                <asp:ListItem Value="&gt;">Mayor a:</asp:ListItem>
                <asp:ListItem Value="&lt;">Menor a:</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtbProducto" runat="server" CssClass="auto-style3" TextMode="Number"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lblIdCategoria" runat="server" Text="Id Categoria:"></asp:Label>
&nbsp;&nbsp;
            <asp:DropDownList ID="ddlIdCategoria" runat="server" CssClass="auto-style2">
                <asp:ListItem Value="=">Igual a:</asp:ListItem>
                <asp:ListItem Value="&gt;">Mayor a:</asp:ListItem>
                <asp:ListItem Value="&lt;">Menor a:</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtbCategoria" runat="server" TextMode="Number"></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnFiltrar" runat="server" OnClick="btnFiltrar_Click" Text="Filtrar" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnQuitarFiltro" runat="server" Text="Quitar Filtro" OnClick="btnQuitarFiltro_Click" />
            <br />
            <br />
            <asp:GridView ID="gvProductos" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3B.aspx.cs" Inherits="TP4_Grupo_Nro_14.Ejercicio3B" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Listado de Libros: "></asp:Label>
            <br />
            <br />
            <asp:GridView ID="gvLibros" runat="server">
            </asp:GridView>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Consultar otro Tema</asp:LinkButton>
            <br />
        </div>
    </form>
</body>
</html>

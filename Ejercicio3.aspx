<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio3.aspx.cs" Inherits="TP4_Grupo_Nro_14.Ejercicio3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblSeleTema" runat="server" Text="Seleccionar Tema:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="ddlTema" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <asp:LinkButton ID="lkbVerLibros" runat="server" OnClick="lkbVerLibros_Click">Ver Libros</asp:LinkButton>
        </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ejercicio1.aspx.cs" Inherits="TP4_Grupo_Nro_14.Ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 185px;
        }
        .auto-style3 {
            width: 185px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblDesInicio" runat="server" Font-Underline="True" Text="DESTINO INICIO"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblProvinciaDI" runat="server" Text="PROVINCIA: " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProvinciaDI" runat="server"  OnSelectedIndexChanged="ddlProvinciaDI_SelectedIndexChanged" AutoPostBack="True">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblLocalidadDI" runat="server" Text="LOCALIDAD: " Font-Bold="True"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlLocalidadDI" runat="server" AutoPostBack="True" >
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4"></td>
                <td class="auto-style4"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblDesFinal" runat="server" Text="DESTINO FINAL" Font-Underline="True"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblProvinciaDF" runat="server" Font-Bold="True" Text="PROVINCIA: "></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProvinciaDF" runat="server" OnSelectedIndexChanged="ddlProvinciaDF_SelectedIndexChanged"  AutoPostBack="True" >
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblLocalidadDF" runat="server" Font-Bold="True" Text="LOCALIDAD"></asp:Label>
                 </td>
                <td>
                    <asp:DropDownList ID="ddlLocalidadDF" runat="server" AutoPostBack="True" >
                    </asp:DropDownList>
                 </td>
                <td>&nbsp;</td>
            </tr>

        </table>
    </form>
</body>
</html>

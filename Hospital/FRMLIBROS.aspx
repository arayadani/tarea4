<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMLIBROS.aspx.cs" Inherits="Hospital.FRMLIBROS" %>

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
            height: 19px;
            text-align: center;
            color: #33CCFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2" colspan="2">LIBROS<asp:Image ID="Image1" runat="server" Height="149px" ImageUrl="~/Imagen/123.png" Width="176px" />
                    </td>
                </tr>
                <tr>
                    <td>Codigo:<asp:TextBox ID="tcodigo" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Titulo:<asp:TextBox ID="Ttitulo" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Autor:<asp:TextBox ID="Tautor" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Precio:<asp:TextBox ID="Tprecio" runat="server"></asp:TextBox>
                        <br />
                    </td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlLibros" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="codigo" HeaderText="codigo" SortExpression="codigo" />
                                <asp:BoundField DataField="titulo" HeaderText="titulo" SortExpression="titulo" />
                                <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" />
                                <asp:BoundField DataField="precio" HeaderText="precio" SortExpression="precio" />
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlLibros" runat="server" ConnectionString="<%$ ConnectionStrings:BIBLIOTECAConnectionString %>" DeleteCommand="delete Libro where codigo = @codigo" InsertCommand="Insert into Libro Values(@codigo,@titulo,@autor,@precio)" SelectCommand="SELECT * FROM [Libro]" UpdateCommand="update Libro set @precio = 300 where @codigo = 1">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Ttitulo" Name="titulo" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Tautor" Name="autor" PropertyName="Text" />
                                <asp:ControlParameter ControlID="Tprecio" Name="precio" PropertyName="Text" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="Tprecio" Name="precio" PropertyName="Text" />
                                <asp:ControlParameter Name="300" />
                                <asp:ControlParameter ControlID="tcodigo" Name="codigo" PropertyName="Text" />
                                <asp:Parameter Name="1" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Agregar" />
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Borrar" Width="57px" />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Modificar" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

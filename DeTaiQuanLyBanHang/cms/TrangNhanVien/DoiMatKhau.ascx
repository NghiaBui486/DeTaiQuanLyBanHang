<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DoiMatKhau.ascx.cs" Inherits="DeTaiQuanLyBanHang.cms.TrangNhanVien.DoiMatKhau" %>
<table style="width:100%;">
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="Label2" runat="server" Text="ĐỔI MẬT KHẨU"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Mật Khẩu Cũ"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtmk" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Mật Khẩu Mới"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtmkm" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label6" runat="server" Text="Nhập Lại Mật Khẩu"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtmkm1" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Button ID="btnxacnhan" runat="server" Text="Xác Nhận" OnClick="btnxacnhan_Click" />
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <asp:Label ID="lbthongbao" runat="server"></asp:Label>
        </td>
    </tr>
</table>



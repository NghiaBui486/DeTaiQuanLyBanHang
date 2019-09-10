<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="XemThongTin.ascx.cs" Inherits="DeTaiQuanLyBanHang.cms.TrangNhanVien.XemThongTin" %>
<style type="text/css">
    .auto-style1 {
        width: 427px;
    }
    .auto-style2 {
        height: 14px;
    }
</style>
<table style="width:100%;">
    <tr>
        <td colspan="2">
          <center>  <asp:Label ID="Label1" runat="server" Text="Chỉnh Sửa Thông Tin" Font-Size="20pt"></asp:Label></center>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label2" runat="server" Text="Tài Khoản"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txttk" runat="server" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label3" runat="server" Text="Mật Khẩu"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtmk" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtemail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label5" runat="server" Text="Địa Chỉ"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txtdiachi" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr >
        <td><span>Số điện thoại:</span></td>
        <td class="auto-style1" >
            <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtsdt" ErrorMessage="" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(0[0-9]{9,10})$">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" SetFocusOnError="True" Text="*" ControlToValidate="txtsdt"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label7" runat="server" Text="Họ Tên"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="txthoten" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style2">
           <center style="width: 125px"> <asp:Button ID="btnxacnhan" runat="server" Text="Xác Nhận" OnClick="btnxacnhan_Click" Height="35px" style="margin-left: 0px; margin-bottom: 12px" Width="101px" /></center>
        </td>
    </tr>
    <tr>
        <td colspan="2" class="auto-style2">
            <asp:Label ID="lbthongbao" runat="server"></asp:Label>
        </td>
    </tr>
    </table>
<asp:GridView ID="grchitiet" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="grchitiet_SelectedIndexChanged1">
    <Columns>
        <asp:BoundField DataField="TAIKHOAN" HeaderText="Tài Khoản" />
        <asp:BoundField DataField="MATKHAU" HeaderText="Mật Khẩu" />
        <asp:BoundField DataField="EMAIL" HeaderText="Email" />
        <asp:BoundField DataField="DIACHI" HeaderText="Địa Chỉ" />
        <asp:BoundField DataField="SDT" HeaderText="Số Điện Thoại" />
        <asp:BoundField DataField="HOTEN" HeaderText="Họ Tên" />
        <asp:CommandField ShowSelectButton="True" />
    </Columns>
</asp:GridView>

<p>
    &nbsp;</p>



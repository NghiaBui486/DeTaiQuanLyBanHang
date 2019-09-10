<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="DeTaiQuanLyBanHang.Admin" %>

<%@ Register Src="~/cms/admin/AdminLoadControl.ascx" TagPrefix="uc1" TagName="AdminLoadControl" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang quản lý</title>
    <meta charset="utf-8"/>
    <link href="cms/admin/css/admin.css" rel="stylesheet" />
    <script src="css/js/jquery-3.3.1.js"></script>
    <script src="css/js/javascript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class ="wrapper">
        <div class ="top">
                <ul>
                    <li><img src="pic/slider/BANNER.jpg" /></li>
                    <li><img src="pic/slider/BANNER2.jpg" /></li>
                    <li><img src="pic/slider/BANNER3.jpg" /></li>
                    <li><img src="pic/slider/BANNER4.jpg" /></li>
                    
                </ul>
            <div class="clear"></div>
            
        </div>
            <%--end top--%>
        <div class="user">
            <asp:Label ID="lbXinChao" runat="server" Text="Xin chào" CssClass="Float"></asp:Label>
            <asp:Button ID="btnDangXuat" runat="server" Text="Đăng xuất" CssClass="Dangxuat" OnClick="btnDangXuat_Click" CausesValidation="False" />
        </div>
            <div class ="clear"></div>
            <%--end user--%>
        <div class="menu">
          <ul>
              <%--<li class="menu"><a href="/Admin.aspx?modul=TrangChu">Trang chủ</a></li>--%>
              <li class="menu"><a href="/Admin.aspx?modul=SanPham&modul1=DanhSachSanPham">Sản phẩm</a></li>
              <li class="menu"><a href="/Admin.aspx?modul=KhachHang&modul1=DSKH">Khách hàng</a></li>
              <li class="menu"><a href="/Admin.aspx?modul=NhaCungCap&modul1=DanhSachNCC">Nhà cung cấp</a></li>
              <li class="menu"><a href="/Admin.aspx?modul=TaiKhoan&modul1=DSTaiKhoan">Tài khoản</a></li>
              <%--<li class="menu"><a href="/Admin.aspx?modul=TinTuc">Tin tức</a></li>--%>
              <li class="menu"><a href="/Admin.aspx?modul=GioiThieu">Giới thiệu</a></li>
              <li class="menu"><a href="/Admin.aspx?modul=LienHe">Liên hệ</a></li>
              
             <%-- <li class="Search">
                    <asp:TextBox class ="txtSearch" type ="text" placeholder ="Tìm kiếm sản phẩm" runat="server">
                    </asp:TextBox><asp:Button  class="btnSearch" ID="btnSearch" runat="server" Text="Tìm kiếm"/>

              </li>--%>
              
          </ul>
            <div class="clear"></div>

            <%--end menu--%>
        <div style="padding:5px;margin:5px; background:#58b6fb;height:20px;">
            
                <asp:Label ID="LabelCay" runat="server" Text="" ForeColor="Black"></asp:Label></div>
        </div>

        <div class="content">

            <uc1:AdminLoadControl runat="server" id="AdminLoadControl1" />
        </div>
            <%--end content--%>
         <div class="footer">
             <div style="padding-top:20px">
                 <div class="fl" style="width:500px; text-align:center; ">
                 

                <h1 style="color:#58b6fb; text-transform:uppercase">Về chúng tôi</h1>

                   <div style="text-align:left; margin-left:30px; margin-right:20px">
                        CHÚNG TÔI CHUYÊN KINH DOANH
                        <br />
                        <br />
                        <hr />
                        Xi măng, sắt thép, cát, đá, gạch ống, gạch thẻ, gạch men, sơn...
                        <br />
                            <br />
                            <hr />
                        Dịch vụ vận tải
                       <br />
                       <br />
                       <hr />
                        Thi công công trình
                       <br />
                       <br />
                       <hr />
                   </div>
            </div>
             <div class="fl" style="width:498px;text-align:center; border-left:2px solid #f78839">
                 <h1 style="color:#58b6fb; text-transform:uppercase">liên hệ</h1>

                <div style="text-align:left; margin-left:30px;margin-right:20px">
                    Công ty TNHH MTV VLXD Kiên Cường
                        <br />
                        <br />
                        <hr />
                Mã Số thuế: 0401873869
                        <br />
                        <br />
                        <hr />
                Địa chỉ Kho: Ngã ba Trần Nam Trung - Phan Thao,
                Q. Cẩm Lệ, TP. Đà Nẵng.
                        <br />
                        <br />
                        <hr />
                Văn Phòng: 42 Cổ Mân Lan 2, Phường Hòa Xuân,
                Q. Cẩm Lệ, TP. Đà Nẵng
                        <br />
                        <br />
                        <hr />
                0236.6505.999
                        <br />
                        <br />
                        <hr />
                0935.91.1979 - 0986.91.1979
                        <br />
                        <br />
                        <hr />
                Kiencuong@vatlieuxaydungdanang.com.vn
                        <br />
                        <br />
                        <hr />
                </div>
            </div>
             <div class="clear"></div>
             <div style="text-align:center; height:40px; line-height:40px; border-top:2px solid #f78839; margin-top:20px">
           Copyright © 2017 Đại học Quy Nhơn - Quy Nhon University. All Rights Reserved 
              </div>
             </div>
        </div>
            <%--end footer--%>
        </div>
    </form>
    
</body>
</html>

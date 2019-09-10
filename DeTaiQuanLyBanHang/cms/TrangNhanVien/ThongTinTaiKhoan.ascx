<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongTinTaiKhoan.ascx.cs" Inherits="DeTaiQuanLyBanHang.cms.TrangNhanVien.ThongTinTaiKhoan" %>
<%@ Register Src="~/cms/TrangNhanVien/LoadControlThongTin.ascx" TagPrefix="uc1" TagName="LoadControlThongTin" %>


<div class="left">
        <div class="childleft">
        <div class="Link">
            <img src="../../../pic/arrow-right.gif" />
            <a href ="/TrangNhanVien.aspx?modul=ThongTinACC&modul1=LoadTT">Xem Và Chỉnh Sửa Thông Tin</a>
            <hr />
        </div> 
        <div class="Link">
                <img src="../../../pic/arrow-right.gif" />
                <a href ="/TrangNhanVien.aspx?modul=ThongTinACC&modul1=DOIMK">Đổi Mật Khẩu</a>    
             <hr />
        </div> 
             
    </div>

</div>
<div class="right">
    <div class="childright">
        <uc1:LoadControlThongTin runat="server" id="LoadControlThongTin" />
    </div>
</div>
<div class="clear"></div>
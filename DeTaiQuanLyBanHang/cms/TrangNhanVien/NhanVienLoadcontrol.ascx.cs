using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeTaiQuanLyBanHang.cms.TrangNhanVien
{
    public partial class NhanVienLoadcontrol : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.QueryString["modul"] != null)
            {
                switch (Request.QueryString["modul"])
                {
                    case "SanPham":
                        PlaceHolderNhanVienLoadcontrol.Controls.Add(LoadControl("SanPham.ascx"));
                        break;
                    case "KhachHang":
                        PlaceHolderNhanVienLoadcontrol.Controls.Add(LoadControl("KhachHang.ascx"));
                        break;
                    case "ThongTinACC":
                        PlaceHolderNhanVienLoadcontrol.Controls.Add(LoadControl("ThongTinTaiKhoan.ascx"));
                        break;
                    //case "TinTuc":
                    //    PlaceHolderNhanVienLoadcontrol.Controls.Add(LoadControl("TinTuc/TinTucLoadControl.ascx"));
                    //    break;
                    //case "LienHe":
                    //    PlaceHolderNhanVienLoadcontrol.Controls.Add(LoadControl("LienHe/LienHeLoadControl.ascx"));
                    //    break;
                }
                
            }
        }
    }
}
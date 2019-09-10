using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeTaiQuanLyBanHang.cms.TrangNhanVien
{
    public partial class LoadControlThongTin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["modul1"] != null)
            {
                switch (Request.QueryString["modul1"])
                {
                    case "LoadTT":
                        DOIMK.Controls.Add(LoadControl("XemThongTin.ascx"));
                        break;
                    case "DOIMK":
                        DOIMK.Controls.Add(LoadControl("DoiMatKhau.ascx"));
                        break;
                }
            }
            else
            {
                
            }
        }
    }
}
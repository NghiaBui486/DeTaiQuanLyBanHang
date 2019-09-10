using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeTaiQuanLyBanHang.cms.TrangNhanVien
{
    public partial class DoiMatKhau : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnxacnhan_Click(object sender, EventArgs e)
        {
            string mk = txtmk.Text;
            string mkm = txtmkm.Text;
            string mkm1 = txtmkm1.Text;
            ConnectDatabase con = new ConnectDatabase();
            
            if (mk=="" || mkm=="" || mkm1=="")
            {
                lbthongbao.Text = "Vui Lòng Nhập Đầy Đủ";
            }
            else
            {
                string tk= Session["TAIKHOAN"].ToString();
                bool kt1 = con.CheckUser(tk,mk);
                if (kt1)
                {
                    if (mkm == mkm1)
                    {
                        bool kt = con.UpDate("update QUANLY set MATKHAU='" + txtmkm.Text + "' where TAIKHOAN='" + Session["TAIKHOAN"] + "'");
                        if (kt)
                        {
                            lbthongbao.Text = "Đổi Mật Khẩu Thành Công";
                        }
                        else
                            lbthongbao.Text = "Đổi Mật Khẩu Thất Bại";

                    }
                    else
                    {
                        lbthongbao.Text = "Mật Khẩu Không Khớp";
                    }
                }
                else
                {
                    lbthongbao.Text = "Mật Khẩu Cũ Không Đúng";
                }

            }
        }
    }
}
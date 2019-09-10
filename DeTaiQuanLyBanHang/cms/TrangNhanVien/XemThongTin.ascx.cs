using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DeTaiQuanLyBanHang.cms.TrangNhanVien
{
    public partial class XemThongTin : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectDatabase con = new ConnectDatabase();
            grchitiet.DataSource = con.getTable("select *from QUANLY where TAIKHOAN='"+Session["TAIKHOAN"]+"'");
            grchitiet.DataBind();
        }
        protected void grchitiet_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string tk = grchitiet.SelectedRow.Cells[0].Text;

            ConnectDatabase con = new ConnectDatabase();
            TAIKHOAN us = con.LayTT(tk);
            if(us != null)
            {
                loaddulieu(us);
            }

        }
        private void loaddulieu(TAIKHOAN us)
        {
            txttk.Text = us.TENTAIKHOAN;
            txtmk.Text = us.MATKHAU;
            txtemail.Text = us.EMAIL;
            txtdiachi.Text = us.DIACHI;
            txtsdt.Text = us.SODIENTHOAI;
            txthoten.Text = us.HOTEN;


        }

        protected void btnxacnhan_Click(object sender, EventArgs e)
        {
            string tk = txttk.Text;
            string mk = txtmk.Text;
            string em = txtemail.Text;
            string dc = txtdiachi.Text;
            string sdt = txtsdt.Text;
            string ht = txthoten.Text;
            TAIKHOAN us = laydulieu();
            ConnectDatabase con = new ConnectDatabase();
            TAIKHOAN cc = new TAIKHOAN();
            if(mk==""||em=="" || dc=="" || sdt=="" || ht=="")
            {
                lbthongbao.Text = "Vui Lòng Nhập Đầy Đủ";
            }
            else
            {
                bool kt =con.UpDateTK(us);
                            if(kt)
                            {
                                lbthongbao.Text="Chỉnh Sửa Thành Công";

                            }
                            else
                                lbthongbao.Text = "Chỉnh Sửa Thất Bại";
            }
            

        }
        public TAIKHOAN laydulieu()
        {
            string tk = txttk.Text;
            string mk = txtmk.Text;
           string em= txtemail.Text;
           string dc= txtdiachi.Text;
            string sdt=txtsdt.Text ;
          string ht=  txthoten.Text;
          TAIKHOAN us = new TAIKHOAN
          {
              TENTAIKHOAN = tk,
              MATKHAU = mk,
              EMAIL = em,
              DIACHI = dc,
              SODIENTHOAI = sdt,
              HOTEN = ht,

          };
          return us;
        }
    }
}
using QLBanSach.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QLBanSach
{
    public partial class ThemSach : System.Web.UI.Page
    {
        private static SachRepository repo = new SachRepository();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                // Xử lý lưu ảnh
                string fileName = "";
                if (fhAnhBia.HasFile)
                {
                    string ext = Path.GetExtension(fhAnhBia.FileName).ToLower();
                    if (ext == ".jpg" || ext == ".png" || ext == ".jpeg")
                    {
                        fileName = "Images/" + Path.GetFileName(fhAnhBia.FileName);
                        fhAnhBia.SaveAs(Server.MapPath("~/" + fileName));
                    }
                    else
                    {
                        lblThongBao.Text = "Chỉ chấp nhận file ảnh (.jpg, .png, .jpeg)";
                        return;
                    }
                }

                // Tạo đối tượng sách mới
                Sach sachMoi = new Sach
                {
                    TuaSach = txtTuaSach.Text.Trim(),
                    DonGia = decimal.Parse(txtDonGia.Text),
                    KhuyenMai = chkKhuyenMai.Checked,
                    AnhBia = fileName
                };

                // Thêm vào danh sách
                repo.Add(sachMoi);
                lblThongBao.Text = "Thêm sách thành công!";

                // Reset form
                txtTuaSach.Text = "";
                txtDonGia.Text = "";
                chkKhuyenMai.Checked = false;
            }
        }
    }
}
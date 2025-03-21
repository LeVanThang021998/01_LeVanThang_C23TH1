using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace QLBanSach.Models
{
    public class Sach
    {
        public int MaSach { get; set; }
        public string TenSach { get; set; }        
        public int Dongia { get; set; }
        public decimal DonGia { get; internal set; }
        public int MaCD { get; set; }
        public string Hinh { get; set; }
        public bool KhuyenMai { get; set; }
        public DateTime NgayCapNhat { set; get; }
        public string TuaSach { get; internal set; }
        public string AnhBia { get; internal set; }
        public string TacGia { get; internal set; }
        public int MaTheLoai { get; internal set; }
    }
}
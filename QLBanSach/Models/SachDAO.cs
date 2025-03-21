using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QLBanSach.Models
{
    public class SachDAO : DataProvider
    {
        public List<Sach> getAll()
        {
            List<Sach> ds = new List<Sach>();
            using (SqlConnection conn = getConnection())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Sach", conn))
                {
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        while (rd.Read())
                        {
                            Sach sach = new Sach
                            {
                                MaSach = Convert.ToInt32(rd["masach"]),
                                TenSach = rd["tensach"].ToString(),
                                TacGia = rd["tacgia"].ToString(),
                                DonGia = Convert.ToInt32(rd["dongia"]),
                                MaTheLoai = Convert.ToInt32(rd["matheloai"]),
                                Hinh = rd["hinh"].ToString()
                            };
                            ds.Add(sach);
                        }
                    }
                }
            }
            return ds;
        }

        public List<Sach> getByTheLoai(int matheloai)
        {
            List<Sach> ds = new List<Sach>();
            using (SqlConnection conn = getConnection())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Sach WHERE matheloai=@matheloai", conn))
                {
                    cmd.Parameters.AddWithValue("@matheloai", matheloai);
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        while (rd.Read())
                        {
                            Sach sach = new Sach
                            {
                                MaSach = Convert.ToInt32(rd["masach"]),
                                TenSach = rd["tensach"].ToString(),
                                TacGia = rd["tacgia"].ToString(),
                                DonGia = Convert.ToInt32(rd["dongia"]),
                                MaTheLoai = Convert.ToInt32(rd["matheloai"]),
                                Hinh = rd["hinh"].ToString()
                            };
                            ds.Add(sach);
                        }
                    }
                }
            }
            return ds;
        }

        public List<Sach> getTheoTen(string tenSach)
        {
            List<Sach> ds = new List<Sach>();
            using (SqlConnection conn = getConnection())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Sach WHERE tensach LIKE @tensach", conn))
                {
                    cmd.Parameters.AddWithValue("@tensach", "%" + tenSach + "%");
                    using (SqlDataReader rd = cmd.ExecuteReader())
                    {
                        while (rd.Read())
                        {
                            Sach sach = new Sach
                            {
                                MaSach = Convert.ToInt32(rd["masach"]),
                                TenSach = rd["tensach"].ToString(),
                                TacGia = rd["tacgia"].ToString(),
                                DonGia = Convert.ToInt32(rd["dongia"]),
                                MaTheLoai = Convert.ToInt32(rd["matheloai"]),
                                Hinh = rd["hinh"].ToString()
                            };
                            ds.Add(sach);
                        }
                    }
                }
            }
            return ds;
        }

        public int Update(Sach item)
        {
            try
            {
                using (SqlConnection conn = getConnection())
                {
                    conn.Open();
                    using (SqlCommand cmd = new SqlCommand("UPDATE Sach SET dongia=@dongia, tacgia=@tacgia WHERE masach=@masach", conn))
                    {
                        cmd.Parameters.AddWithValue("@masach", item.MaSach);
                        cmd.Parameters.AddWithValue("@dongia", item.DonGia);
                        cmd.Parameters.AddWithValue("@tacgia", item.TacGia);
                        return cmd.ExecuteNonQuery();
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Lỗi: " + ex.Message);
                return 0;
            }
        }

        public int Delete(Sach item)
        {
            using (SqlConnection conn = getConnection())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("DELETE FROM Sach WHERE masach=@masach", conn))
                {
                    cmd.Parameters.AddWithValue("@masach", item.MaSach);
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        public int Insert(Sach item)
        {
            using (SqlConnection conn = getConnection())
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Sach (tensach, tacgia, dongia, matheloai, hinh) " +
                                                       "VALUES (@tensach, @tacgia, @dongia, @matheloai, @hinh)", conn))
                {
                    cmd.Parameters.AddWithValue("@tensach", item.TenSach);
                    cmd.Parameters.AddWithValue("@tacgia", item.TacGia);
                    cmd.Parameters.AddWithValue("@dongia", item.DonGia);
                    cmd.Parameters.AddWithValue("@matheloai", item.MaTheLoai);
                    cmd.Parameters.AddWithValue("@hinh", item.Hinh);
                    return cmd.ExecuteNonQuery();
                }
            }
        }
    }
}
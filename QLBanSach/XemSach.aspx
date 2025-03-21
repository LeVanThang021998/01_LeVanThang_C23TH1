<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="XemSach.aspx.cs" Inherits="QLBanSach.XemSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <h3>Trang xem sách</h3>
    <hr />
    <div class="form-inline">
                Chọn thể loại
                <asp:DropDownList ID="ddlTheLoai" runat="server"
                    DataSourceID="odsTheLoai" DataTextField="TenTheLoai" DataValueField="MaTheLoai" CssClass="form-control" AutoPostBack="True">
                </asp:DropDownList>
    </div>
    
    <div class="row" style="margin-top: 10px">
        <asp:Repeater ID="rptSach" runat="server" DataSourceID="odsSach">
            <ItemTemplate>
                <div class="col-md-4 text-center">
                    <img src="/Hinh_sach/<%# Eval("AnhBia") %>" style="width: 250px" />
                    <br />
                    <asp:Label ID="lbTen" runat="server" Text='<%# Eval("TuaSach") %>'></asp:Label>  <br />
                    Giá sách 
                    <asp:Label ID="lbGia" runat="server" ForeColor="#ff6600" Text='<%# Eval("DonGia","{0: #,##0} đồng") %>'></asp:Label>  <br />
                    Tác giả  <asp:Label ID="lbTacGia" runat="server" ForeColor="#ff6600" Text='<%# Eval("TacGia") %>'></asp:Label>
                    <br />
                    <a href="DatSach.aspx?MaSach=<%# Eval("MaSach") %>" class="btn btn-primary">Đặt sách</a>
                    <a href="ChiTietSach.aspx?MaSach=<%# Eval("MaSach") %>" class="btn btn-success">Xem chi tiết</a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>

    <asp:ObjectDataSource ID="odsTheLoai" runat="server"
        SelectMethod="getAll"
        TypeName="WebDuLich.Models.TheLoaiDAO"></asp:ObjectDataSource>

    <asp:ObjectDataSource ID="odsSach" runat="server" SelectMethod="getByTheLoai" TypeName="WebDuLich.Models.SachDAO">
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlTheLoai" Name="matheloai" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>

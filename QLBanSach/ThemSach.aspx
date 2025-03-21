<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="ThemSach.aspx.cs" Inherits="QLBanSach.ThemSach" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <h2>THÊM SÁCH MỚI</h2>
    <hr />
    
    <div class="w-100">

        <div class="form-group">
            <label class="font-weight-bold">Tên sách</label>
            <asp:TextBox ID="txtTen" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvTen" runat="server" ErrorMessage="Chưa nhập tên sách"
                 Text="(*)" ControlToValidate="txtTen" ForeColor="#FF3399"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="font-weight-bold">Đơn giá</label>
            <asp:TextBox ID="txtDonGia" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:CompareValidator ID="cvDonGia" runat="server"
            ControlToValidate="txtDonGia"
            ErrorMessage="Đơn giá phải lớn hơn 0"
            Operator="GreaterThan"
            ValueToCompare="0"
            Type="Double"
            ForeColor="Red"
            Display="Dynamic">(*)</asp:CompareValidator>
        </div>
        <div class="form-group">
            <label class="font-weight-bold">Chủ đề</label>
            <asp:DropDownList ID="ddlChuDe" runat="server" CssClass="form-control"
                DataSourceID="odsChuDe" DataTextField="TenCD" DataValueField="MaCD"></asp:DropDownList>
        </div>
        <div class="form-group">
            <label class="font-weight-bold">Ảnh bìa sách</label>
            <asp:FileUpload ID="FHinh" runat="server" CssClass="form-control-file" />
            <asp:RequiredFieldValidator ID="rfvHinh" runat="server" ErrorMessage="Ảnh bìa không được bỏ trống"
                 Text="(*)" ControlToValidate="FHinh" ForeColor="#FF3399"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="font-weight-bold">Khuyến mãi</label>
            <asp:CheckBox ID="chkKhuyenMai" runat="server" Checked="true" CssClass="form-check" />
        </div>
        <asp:Button ID="btXuLy" runat="server" Text="Lưu" CssClass="btn btn-success" OnClick="btXuLy_Click" />
        <asp:Label ID="lbThongBao" runat="server" Text="" ForeColor="#cc6600"></asp:Label>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
    </div>
    <br />
    <asp:ObjectDataSource ID="odsTheLoai" runat="server" SelectMethod="getAll" TypeName="QLBanSach.Models.ChuDeDAO">
    </asp:ObjectDataSource>
</asp:Content>
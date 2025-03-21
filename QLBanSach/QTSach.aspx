<%@ Page Title="" Language="C#" MasterPageFile="~/Layout.Master" AutoEventWireup="true" CodeBehind="QTSach.aspx.cs" Inherits="QLBanSach.QTSach" %>
<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
     <h2>TRANG QUẢN TRỊ SÁCH</h2>
     <hr />   
    <div class="row">
         <div class="col-md-6">
              <div class="form-inline">
                   Tựa sách 
                   <asp:TextBox ID="txtTenSach" runat="server" CssClass="form-control" Width="300"></asp:TextBox>
                   <asp:Button ID="btTraCuu" runat="server" Text="Tra cứu" CssClass="btn btn-primary" />
              </div>
         </div>
        <div class="col-md-6 text-right">
             <a href="ThemSach.aspx" class="btn btn-success">Thêm sách mới</a>
        </div>
    </div>

    <div style="margin-top:20px">
        <asp:GridView ID="gvSach" runat="server" AllowPaging="True" PageSize="5"
            AutoGenerateColumns="False" DataSourceID="odsSach" CssClass="table table-bordered" DataKeyNames="MaSach">
            <Columns>              
                <asp:BoundField DataField="TenSach" HeaderText="Tên sách" ReadOnly="true" />   
                <asp:ImageField DataImageUrlField="AnhBia" DataImageUrlFormatString="/hinh_sach/{0}" ControlStyle-Width="150px" HeaderText="Ảnh bìa" ReadOnly="true" />
                <asp:BoundField DataField="DonGia" DataFormatString="{0: #,##0} đồng" HeaderText="Đơn giá"  />
                <asp:CheckBoxField DataField="KhuyenMai" HeaderText="Khuyến mãi" />
                <asp:CommandField ShowEditButton="true" ButtonType="Button" EditText="Sửa" DeleteText="Xoá" />
                <asp:TemplateField>
                     <ItemTemplate>
                         <asp:Button ID="btXoa" runat="server" Text="Xoá" CommandName="Delete" OnClientClick="return confirm('Bạn có muốn xoá?')" /> 
                     </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle  HorizontalAlign="Center"/>
        </asp:GridView>
    </div>

    <asp:ObjectDataSource ID="odsSach" runat="server" 
        DataObjectTypeName="QLBanSach.Models.Sach"
        DeleteMethod="Delete" 
        SelectMethod="getTenSach" 
        TypeName="QLBanSach.Models.SachDAO" 
        UpdateMethod="Update">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtTenSach" Name="tenSach" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>

</asp:Content>

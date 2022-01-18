<%@ Page Title="Ürün Liste" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BetulFinalApp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="margin-top: 3rem;">
        <asp:Literal ID="ltrAlertBox" runat="server"></asp:Literal>
        <div id="panel" style="height: 500px; background-color: White; padding: 10px; overflow: auto">

            <asp:GridView ID="gvUrunler" runat="server" CssClass="table" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField ItemStyle-Width="20px" HeaderText="No">
                        <ItemTemplate>
                            <asp:Label ID="lblNo" runat="server"
                                Text='<%#Eval("Id")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Adı">
                        <ItemTemplate>
                            <asp:Label ID="lblAdi" runat="server"
                                Text='<%#Eval("Adi")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Kodu">
                        <ItemTemplate>
                            <asp:Label ID="lblKodu" runat="server"
                                Text='<%#Eval("Kodu")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Açıklama">
                        <ItemTemplate>
                            <asp:Label ID="lblAciklama" runat="server"
                                Text='<%#Eval("Aciklama")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Adet">
                        <ItemTemplate>
                            <asp:Label ID="lblAdet" runat="server"
                                Text='<%#Eval("Adet")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Menşei">
                        <ItemTemplate>
                            <asp:Label ID="lblMensei" runat="server"
                                Text='<%#(int)Eval("Mensei") == 1 ? "Yerli" : "Yabancı"%> '></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="KDV Oranı">
                        <ItemTemplate>
                            <asp:Label ID="lblKdvOrani" runat="server"
                                Text='<%#Eval("KdvOrani") + "%"%> '></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Maliyet">
                        <ItemTemplate>
                            <asp:Label ID="lblMaliyet" runat="server"
                                Text='<%#Eval("Maliyet")%> '></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fiyat">
                        <ItemTemplate>
                            <asp:Label ID="lblFiyat" runat="server"
                                Text='<%#Eval("Fiyat")%> '></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ItemStyle-Width="100px" HeaderText="Fotoğraf">
                        <ItemTemplate>
                            <img src='<%# Eval("FotografDosyaYolu")%>' alt='<%#  
                                                Eval("FotografDosyaYolu")%>'
                                height="50px"
                                width="50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="İşlemler">
                        <ItemTemplate>
                            <%--  <asp:LinkButton ID="btn_Detay" runat="server" PostBackUrl='<%# "U.aspx?Id="+ Eval("UrunID")%>+"&KategoriID="+ Eval("KategoriID")%>'>Detaylı İncele</asp:LinkButton>--%>
                            <asp:LinkButton ID="btnGuncelle" runat="server" CommandArgument='<%# Eval("Id")%>' class="btn btn-success" Text="Güncelle" PostBackUrl='<%# "UrunUpdate.aspx?Id="+ Eval("Id")%>'>Güncelle</asp:LinkButton>
                            <asp:LinkButton ID="btnSil" runat="server" CommandArgument='<%# Eval("Id")%>' class="btn btn-danger" Text="Sil" PostBackUrl='<%# "Default.aspx?Id="+ Eval("Id")%>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>

        </div>
    </div>
</asp:Content>

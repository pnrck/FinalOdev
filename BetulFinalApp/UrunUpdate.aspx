<%@ Page Title="Ürün Güncelleme" Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="UrunUpdate.aspx.cs" Inherits="BetulFinalApp.UrunUpdate" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="margin-top: 1rem;">
        <asp:Literal ID="ltrAlertBox" runat="server"></asp:Literal>
        <div class="row"> <div class="col-md-4">
            <div class="form-group">
                <asp:HiddenField ID="hdnId" runat="server" />
                <label for="txtAdi">Adı</label>
                <asp:RequiredFieldValidator runat="server" id="rfvAdi" controltovalidate="txtAdi" errormessage="**(Lütfen bu alanı doldurunuz.)" ForeColor="#ff6b6b" Font-Bold="True"/>
                <asp:TextBox ID="txtAdi" runat="server" class="form-control" aria-describedby="txtAdiAciklama"></asp:TextBox>
                <small id="txtAdiAciklama" class="form-text text-muted">Ürün adı bilgisini giriniz.</small>
            </div>
            <div class="form-group">
                <label for="txtKodu">Kodu</label>
                <asp:RequiredFieldValidator runat="server" id="rfvKodu" controltovalidate="txtKodu" errormessage="**(Lütfen bu alanı doldurunuz.)" ForeColor="#ff6b6b" Font-Bold="True"/>
                <asp:TextBox ID="txtKodu" runat="server" class="form-control" aria-describedby="txtKoduAciklama"></asp:TextBox>
                <small id="txtKoduAciklama" class="form-text text-muted">Ürün kodu bilgisini giriniz.</small>
            </div>
            <div class="form-group">
                <label for="txtAciklama">Açıklama</label>
                <asp:TextBox ID="txtAciklama" runat="server" class="form-control" TextMode="MultiLine" aria-describedby="txtAciklamaAciklama" Height="75px"></asp:TextBox>
                <small id="txtAciklamaAciklama" class="form-text text-muted">Ürün ait açıklama bilgisini giriniz.</small>
            </div> 
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="ddlMensei">Menşei</label> 
                <asp:DropDownList ID="ddlMensei" runat="server" class="form-control" aria-describedby="ddlMenseiAciklama">
                    <asp:ListItem Value="1">Yerli</asp:ListItem>
                    <asp:ListItem Value="2">Yabancı</asp:ListItem>
                </asp:DropDownList>
                <small id="ddlMenseiAciklama" class="form-text text-muted">Ürün adet miktarı bilgisini giriniz.</small>
            </div>
            <div class="form-group">
                <label for="ddlKdvOrani">KDV Oranı</label> 
                <asp:DropDownList ID="ddlKdvOrani" runat="server" class="form-control" aria-describedby="ddlKdvOraniAciklama">
                    <asp:ListItem Value="18">18%</asp:ListItem>
                    <asp:ListItem Value="10">10%</asp:ListItem>
                    <asp:ListItem Value="8">8%</asp:ListItem>
                    <asp:ListItem Value="1">1%</asp:ListItem>
                </asp:DropDownList>
                <small id="ddlKdvOraniAciklama" class="form-text text-muted">Ürün KDV oranı bilgisini giriniz.</small>
            </div>
            <div class="form-group">
                <label for="txtAdet">Adet</label>
                <asp:RequiredFieldValidator runat="server" id="rfvAdet" controltovalidate="txtAdet" errormessage="**(Lütfen bu alanı doldurunuz.)" ForeColor="#ff6b6b" Font-Bold="True"/>
                <asp:TextBox ID="txtAdet" runat="server" class="form-control" TextMode="Number" aria-describedby="txtAdetAciklama"></asp:TextBox>
                <small id="txtAdetAciklama" class="form-text text-muted">Ürün adet miktarı bilgisini giriniz.</small>
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group">
                <label for="txtMaliyet">Maliyet</label>
                <asp:RequiredFieldValidator runat="server" id="rfvMaliyet" controltovalidate="txtMaliyet" errormessage="**(Lütfen bu alanı doldurunuz.)" ForeColor="#ff6b6b" Font-Bold="True"/>
                <asp:TextBox ID="txtMaliyet" runat="server" class="form-control" aria-describedby="txtMaliyetAciklama"></asp:TextBox>
                <small id="txtMaliyetAciklama" class="form-text text-muted">Ürün maliyet bilgisini giriniz.</small>
            </div>
            <div class="form-group">
                <label for="txtFiyat">Fiyat</label>
                <asp:RequiredFieldValidator runat="server" id="rfvFiyat" controltovalidate="txtFiyat" errormessage="**(Lütfen bu alanı doldurunuz.)" ForeColor="#ff6b6b" Font-Bold="True"/>
                <asp:TextBox ID="txtFiyat" runat="server" class="form-control" aria-describedby="txtFiyatAciklama"></asp:TextBox>
                <small id="txtFiyatAciklama" class="form-text text-muted">Ürün fiyat bilgisini giriniz.</small>
            </div>
            <div class="form-group">
                <label for="fuFotografDosyoYolu">Fotoğraf</label>
                <asp:FileUpload ID="fuFotografDosyoYolu" runat="server" aria-describedby="fuFotografDosyoYoluAciklama" class="form-control" />
                <small id="fuFotografDosyoYoluAciklama" class="form-text text-muted">Ürün ait fotoğraf yükleyiniz.</small>
            </div>
        </div></div>
        <div class="row">
            <div class="col-md-12">
                <asp:Button ID="btnGuncelle" runat="server" class="btn btn-success" Text="Güncelle" OnClick="btnGuncelle_Click" />
            </div>
        </div> 
    </div> 

</asp:Content>

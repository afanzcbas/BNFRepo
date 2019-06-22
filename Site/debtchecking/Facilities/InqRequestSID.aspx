﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InqRequestSID.aspx.cs" Inherits="DebtChecking.Facilities.InqRequestSID" %>
<%@ Register assembly="DevExpress.Web.v17.1" namespace="DevExpress.Web" tagprefix="dxcp" %>
<%@ Register assembly="DevExpress.Web.v17.1" namespace="DevExpress.Web" tagprefix="dxp" %>
<%@ Register assembly="DevExpress.Web.v17.1" namespace="DevExpress.Web" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.v17.1" namespace="DevExpress.Web" tagprefix="dxpc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Approval BI Checking</title>
    <link href="../include/style.css" type="text/css" rel="Stylesheet" />
    <!-- #include file="~/include/onepost.html" -->
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxcp:ASPxCallbackPanel ID="mainPanel" runat="server" Width="100%" 
         ClientInstanceName="mainPanel" OnCallback="mainPanel_Callback">        
        <PanelCollection>
        <dxp:PanelContent ID="PanelContent1" runat="server">
        <table width="100%" class="Box1">
            <tr>
                <td colspan="2" class="H1">request BI checking</td>
            </tr>
            <tr>
                <td width="50%">
                    <table width="100%">
                        <tr>
                            <td class="B01">Request ID</td>
                            <td class="BS">:</td>
                            <td class="B11"><asp:Label ID="requestid" runat="server" Font-Bold="true"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="B01">Request By</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="inputby" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Request Date</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="reqdate" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </td>
                <td width="50%">
                    <table width="100%">
                        <tr>
                            <td class="B01">Jenis Produk</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="productdesc" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Cabang</td>
                            <td class="BS">:</td>
                            <td class="B11"><asp:Label ID="branchname" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Tujuan BI Checking</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="purposedesc" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="H1">Informasi Debitur</td>
            </tr>
            <tr>
                <td width="50%">
                    <table width="100%">
                        <tr>
                            <td class="B01">Nama Customer</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="cust_name" runat="server" Font-Bold="true"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Tgl Lahir/Pendirian</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="dob" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Nomor KTP / Akta</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="ktp" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Jenis Customer</td>
                            <td class="BS">:</td>
                            <td class="B11"><asp:Label ID="cust_type" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </td>
                <td width="50%">
                    <table width="100%">
                        <tr>
                            <td class="B01">Nomor NPWP</td>
                            <td class="BS">:</td>
                            <td class="B11"><asp:Label ID="npwp" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Tempat Lahir</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="pob" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Alamat</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="homeaddress" runat="server"></asp:Label></td>
                        </tr>
                        <tr>
                            <td class="B01">Nomor Telp</td>
                            <td class="B11">:</td>
                            <td class="B11"><asp:Label ID="phonenumber" runat="server"></asp:Label></td>
                        </tr>
                    </table>
                </td>
            </tr>
            
            <tr id="tr_suppheader" runat="server">
                <td colspan="2" class="H1">Permintaan BI Checking Lainnya/Tambahan</td>
            </tr>
            <tr id="tr_supplement" runat="server">
                <td colspan="2">
                    <dxwgv:ASPxGridView ID="GridViewSuppl" runat="server" Width="100%" AutoGenerateColumns="False" 
                        ClientInstanceName="GridViewSuppl" KeyFieldName="seq" OnLoad="GridViewSuppl_Load">
                        <Columns>
                            <dxwgv:GridViewDataTextColumn Caption="Nama" FieldName="cust_name" ></dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn Caption="Hubungan" FieldName="relation" ></dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn Caption="Tgl Lahir/Pendirian" FieldName="dob" >
                                <PropertiesTextEdit DisplayFormatString="dd/MMM/yyyy"></PropertiesTextEdit>
                            </dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn Caption="Nomor KTP/Akta" FieldName="ktp" ></dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn Caption="NPWP" FieldName="npwp"></dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn Caption="Tempat Lahir" FieldName="pob"></dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn Caption="Alamat" FieldName="homeaddress"></dxwgv:GridViewDataTextColumn>
                            <dxwgv:GridViewDataTextColumn Caption="No Telp" FieldName="phonenumber"></dxwgv:GridViewDataTextColumn>
                        </Columns>
                        <SettingsPager PageSize="20" />
                        <SettingsBehavior AllowGroup="False" />
                    </dxwgv:ASPxGridView>

                </td>
            </tr>
        </table><br />
        <table width="600" cellspacing="0">
            <tr><td colspan="4" align="left"><b><font color="red" size="2">Status Request Saat Ini</font></b></td></tr>
            <tr>
                <td width="160" align="center" class="Dg1"><b>Status</b></td>
                <td width="150" align="center" class="Dg1"><b>Userid</b></td>
                <td width="200" align="center" class="Dg1"><b>Tgl Status</b></td>
                <td width="80" align="center" class="Dg1"><b>Aging (day)</b></td>
            </tr>
            <tr>
                <td align="center" class="Dg1"><asp:Label ID="reqstatusdesc" runat="server"></asp:Label></td>
                <td align="center" class="Dg1"><asp:Label ID="curr_holder" runat="server"></asp:Label>&nbsp;</td>
                <td align="center" class="Dg1"><asp:Label ID="status_since" runat="server"></asp:Label></td>
                <td align="center" class="Dg1"><asp:Label ID="status_aging" runat="server"></asp:Label>&nbsp;</td>
            </tr>
        </table>

        <table width="100%" id="tbl_history" runat="server" style="display:none">
            <tr><td><b>History</b></td></tr>
            <tr>
                <td>
                <asp:GridView ID="GRID_NOTES" runat="server" width="100%" CssClass="Dg1" AutoGenerateColumns="false">
                    <FooterStyle Font-Bold="true" ForeColor="black" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <HeaderStyle Font-Bold="true" ForeColor="black" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <AlternatingRowStyle />
                    <RowStyle ForeColor="black" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <Columns>
                       <asp:BoundField DataField="seq" HeaderText="No" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="5%" Visible="false"  />
                       <asp:TemplateField HeaderText="Tgl Masuk" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#FormatedValue(Eval("in_date")) %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Tgl Keluar" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%#FormatedValue(Eval("out_date")) %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                       <asp:BoundField DataField="userid" HeaderText="User ID" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="10%"  />
                       <asp:BoundField DataField="sts_desc" HeaderText="Status" ItemStyle-HorizontalAlign="left" ItemStyle-Width="10%"  />
                       <asp:BoundField DataField="act_desc" HeaderText="Action" ItemStyle-HorizontalAlign="left" ItemStyle-Width="10%"  />
                       <asp:BoundField DataField="comment" HeaderText="Comment" ItemStyle-HorizontalAlign="left" />
                    </Columns>
                </asp:GridView>
                </td>
            </tr>
        </table>

        </dxp:PanelContent>
        </PanelCollection>
        </dxcp:ASPxCallbackPanel>

    </div>
    </form>
</body>
</html>
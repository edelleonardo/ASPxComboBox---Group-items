<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASPxComboBox___How_to_group_items.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .header {
            pointer-events: none;
            color: black;
            font-weight: bold;
            padding: 20px 10px 10px;
            border-bottom: 2px solid #ddd !important;
            border-top: 1px solid;
            background-color: lightgreen;
        }
    </style>
    <script>
        function OnItemFiltering(s, e) {
            if (e.item.value == null) {
                e.isFit = false;
            }
        }

        function OnInit(s, e) {
            s.SetSelectedIndex(-1);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxComboBox ID="ASPxComboBox1" ClientInstanceName="combo" runat="server" ValueType="System.Int32" TextFormatString="{0}" TextField="Text" ValueField="Id"
            OnDataBound="ASPxComboBox1_DataBound" OnItemRowPrepared="ASPxComboBox1_ItemRowPrepared" OnCustomFiltering="ASPxComboBox1_CustomFiltering">
  <ClientSideEvents ItemFiltering="OnItemFiltering" Init="OnInit"   />
<%--            <Columns>
                <dx:ListBoxColumn FieldName="Text"></dx:ListBoxColumn>
                <dx:ListBoxColumn FieldName="Data"></dx:ListBoxColumn>
            </Columns>--%>
        </dx:ASPxComboBox>

        
    </form>
</body>
</html>

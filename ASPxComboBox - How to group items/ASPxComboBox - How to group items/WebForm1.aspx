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
 
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <dx:ASPxComboBox ID="ASPxComboBox1" runat="server" ValueType="System.Int32" TextField="Text" ValueField="Id" OnDataBound="ASPxComboBox1_DataBound" OnItemRowPrepared="ASPxComboBox1_ItemRowPrepared">
  
            
        </dx:ASPxComboBox>
    </form>
</body>
</html>

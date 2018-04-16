<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v15.1, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function Click(s, e) {
            alert(s.GetNodeHtmlElement(e.nodeKey).getAttribute("nodelevel"));
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxTreeList ID="ASPxTreeList1" runat="server" OnHtmlRowPrepared="ASPxTreeList1_HtmlRowPrepared" AutoGenerateColumns="False" DataSourceID="AccessDataSource1"
                KeyFieldName="EmployeeID" ParentFieldName="ReportsTo">
                <Columns>
                    <dx:TreeListTextColumn FieldName="LastName" VisibleIndex="0">
                    </dx:TreeListTextColumn>
                </Columns>
                <SettingsBehavior AutoExpandAllNodes="True" />
                <ClientSideEvents NodeClick="Click" />
            </dx:ASPxTreeList>
            <asp:AccessDataSource ID="AccessDataSource1" DataFile="~/Northwind.mdb" runat="server" SelectCommand="SELECT [EmployeeID], [LastName], [ReportsTo] FROM [Employees]"></asp:AccessDataSource>
        </div>
    </form>
</body>
</html>
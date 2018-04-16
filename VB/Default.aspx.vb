Imports DevExpress.Web.ASPxTreeList
Imports DevExpress.Web.ASPxTreeList.Internal
Imports System
Imports System.Collections.Generic
Imports System.Drawing
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    Protected Sub ASPxTreeList1_HtmlRowPrepared(ByVal sender As Object, ByVal e As TreeListHtmlRowEventArgs)
        e.Row.Attributes.Add("nodelevel", e.Level.ToString())
    End Sub
End Class
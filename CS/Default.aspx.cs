using DevExpress.Web.ASPxTreeList;
using DevExpress.Web.ASPxTreeList.Internal;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void ASPxTreeList1_HtmlRowPrepared(object sender, TreeListHtmlRowEventArgs e) {
        e.Row.Attributes.Add("nodelevel", e.Level.ToString());
    }
}
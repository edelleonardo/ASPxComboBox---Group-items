using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPxComboBox___How_to_group_items
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ASPxComboBox1.DataSource = Enumerable.Range(1, 10).Select(a => new {
                Id = a,
                Text = "Text " + a
            });

            ASPxComboBox1.DataBind();
        }
    }
}
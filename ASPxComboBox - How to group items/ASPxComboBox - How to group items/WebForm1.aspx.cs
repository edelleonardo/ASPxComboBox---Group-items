using DevExpress.Web;
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

   
            ASPxComboBox1.DataBind();

        }

        protected void ASPxComboBox1_DataBound(object sender, EventArgs e)
        {
            ASPxComboBox combo = sender as ASPxComboBox;

            var dataGrouped = Enumerable.Range(1, 15).Select(a => new SampleData
            {
                Id = a,
                Text = "Text " + a,
                GroupName = (a % 2 == 0) ? "Even" : "Odd",
                GroupId = (a % 2 == 0) ? 1 : 2
            }).GroupBy(x => x.GroupId);


            foreach (var group in dataGrouped)
            {
                var groupKey = group.Key;

                //testing only

                if (groupKey == 1)
                {
                    ListEditItem comboItem = new ListEditItem() { Text = "Even", Value = null };
                    combo.Items.Add(comboItem);
                }
                else
                {
                    ListEditItem comboItem = new ListEditItem() { Text = "Odd", Value = null };
                    combo.Items.Add(comboItem);
                }
         


                foreach (SampleData groupedItem in group)
                {
                    ListEditItem comboItem = new ListEditItem() { Text = groupedItem.Text, Value = groupedItem.Id,  };
                    combo.Items.Add(comboItem);
                }
            }


            combo.SelectedIndex = -1;

        }

        protected void ASPxComboBox1_ItemRowPrepared(object sender, ListBoxItemRowPreparedEventArgs e)
        {
            if (e.Item.Text == "Odd" || e.Item.Text == "Even")
            {
                e.Row.CssClass = "header";
            }
        }
    }
}
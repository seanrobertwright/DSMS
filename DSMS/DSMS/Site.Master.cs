using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;

namespace DSMS
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Session["clearTheme"] == null)
            {
                this.Session["Ext.Net.Theme"] = Ext.Net.Theme.Neptune;
            }
            else
            {
                Theme theme = Ext.Net.Theme.Gray;

                if (this.Session["Ext.Net.Theme"] != null)
                {
                    theme = (Theme)this.Session["Ext.Net.Theme"];
                }
            }
        }

        protected override void OnInit(EventArgs e)
        {
            this.orMain.ExtraText = HttpContext.Current.User.Identity.Name;
            base.OnInit(e);
        }

        protected void Goto_Home(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }

    }
}
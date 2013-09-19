using System;
using Ext.Net;
using System.Data.SqlClient;

namespace DSMS.Content.Nonconformances
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!X.IsAjaxRequest)
            {
                this.strNoncom.DataSource = this.GetDataReader();
                this.strNoncom.DataBind();
            }
        }

        protected void strNoncom_RefreshData(object sender, StoreReadDataEventArgs e)
        {
            this.strNoncom.DataSource = this.GetDataReader();
            this.strNoncom.DataBind();
        }

        private SqlDataReader GetDataReader()
        {
            SqlConnection myConnection;
            SqlCommand myCommand;
            SqlDataReader myDataReader;

            string strConn = System.Configuration.ConfigurationManager.ConnectionStrings["DSMSConnectionString"].ConnectionString;

            myConnection = new SqlConnection(strConn);
            myConnection.Open();

            myCommand = new SqlCommand("SELECT * FROM Issues", myConnection);
            myDataReader = myCommand.ExecuteReader();

            return myDataReader;
        }

    }
}
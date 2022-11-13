using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Hospital
{
    public partial class FRMLIBROS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlLibros.Insert();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlLibros.Delete();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlLibros.Update();
        }
    }
}
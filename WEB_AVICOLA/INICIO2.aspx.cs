using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB_AVICOLA
{
    public partial class INICIO2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btnMision.Click += btnMision_Click;
            btnVision.Click += btnVision_Click;
            btnContactenos.Click += btnContactenos_Click;
            btnConocenos.Click += btnConocenos_Click;
        }

        protected void btnMision_Click(object sender, EventArgs e)
        {
            pnlBienvenida.Visible = false;
            pnlMision.Visible = true;
            pnlVision.Visible = false;
            pnlContactenos1.Visible = false;
            pnlConocenos.Visible = false;
        }

        protected void btnVision_Click(object sender, EventArgs e)
        {
            pnlBienvenida.Visible = false;
            pnlMision.Visible = false;
            pnlVision.Visible = true;
            pnlContactenos1.Visible = false;
            pnlConocenos.Visible = false;
        }

        protected void btnContactenos_Click(object sender, EventArgs e)
        {
            pnlBienvenida.Visible = false;
            pnlMision.Visible = false;
            pnlVision.Visible = false;
            pnlContactenos1.Visible = true;
            pnlConocenos.Visible = false;
        }

        protected void btnConocenos_Click(object sender, EventArgs e)
        {
            pnlBienvenida.Visible = false;
            pnlMision.Visible = false;
            pnlVision.Visible = false;
            pnlContactenos1.Visible = false;
            pnlConocenos.Visible = true;
        }
    }
}
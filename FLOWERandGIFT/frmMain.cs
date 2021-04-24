using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace FLOWERandGIFT
{
    public partial class frmMain : Form
    {
        BLL_ChatLieu CHATLIEU = new BLL_ChatLieu();
        public frmMain()
        {
            InitializeComponent();
        }

        private void dtgCHATLIEU_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            //txtMaChatLieu.Enabled = false;
            //int dong;
            //dong = dtgCHATLIEU.CurrentRow.Index;
            //txtMaChatLieu.Text = dtgCHATLIEU[0, dong].Value.ToString();
            //txtTenchatLieu.Text = dtgCHATLIEU[1, dong].Value.ToString();
            txtMaChatLieu.Enabled = false;
            int dong;
            dong = dtgCHATLIEU.CurrentRow.Index;
            txtMaChatLieu.Text = dtgCHATLIEU[0, dong].Value.ToString();
            txtTenChatLieu.Text = dtgCHATLIEU[1, dong].Value.ToString();
        }

        private void tabPage2_Click(object sender, EventArgs e)
        {

        }
    }
}

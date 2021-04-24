using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FLOWERandGIFT
{
    public partial class DangNhapForm : Form
    {
        BLL_TaiKhoan bll = new BLL_TaiKhoan();
        public DangNhapForm()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            if (bll.KiemTraTaiKhoan(txtUser.Text, txtPass.Text))
            {
                // đoạn ni tạm thời t cho true để nó pass qua mở form main lên, vài bưa m thêm code thì thêm vô
                // đoạn true bằng code check user name và password
                //TenDangNhap = txtUser.Text;
                frmMain frm = new frmMain();
                frm.Show();
                this.Hide();
            }
            else
                MessageBox.Show("Sai tai khoan hoac mat khau");
        }
    }
}

using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class DAL_TaiKhoan
    {
        ThaoTacCSDL thaotac = new ThaoTacCSDL();

        string[] name = { };

        object[] value = { };
        public bool KiemTraTaiKhoan(string username, string password)

        {
            name = new string[2];
            value = new object[2];
            name[0] = "@Username"; value[0] = username;
            name[1] = "@Password"; value[1] = password;
            DataTable dt = thaotac.SQL_LayDuLieuByMa("Login_TAIKHOAN", name, value, 2);

            if (dt.Rows.Count > 0)
            {
                return true;
            }

            return false;
        }
    }
}

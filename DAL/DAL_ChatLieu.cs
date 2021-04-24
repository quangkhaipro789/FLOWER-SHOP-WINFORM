using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
    public class DAL_ChatLieu
    {
        ThaoTacCSDL thaotac = new ThaoTacCSDL();

        //khai báo 2 mảng để truyền tên tham số và giá trị tham số vào Stored Procedures

        string[] name = { };

        object[] value = { };

        //phương thức này gọi phương thức SQL_Laydulieu ở lớp ThaoTac_CoSoDuLieu để thực hiện lấy dữ liệu

        public DataTable Select_CHATLIEU()

        {

            //thaotac.KetnoiCSDL();

            return thaotac.SQL_Laydulieu("Select_CHATLIEU");

        }

        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện insert

        public int Insert_CHATLIEU(string MaChatLieu, string TenChatLieu)

        {

            //thaotac.KetnoiCSDL();

            name = new string[2];

            value = new object[2];

            name[0] = "@MaChatLieu"; value[0] = MaChatLieu;//@MaChatLieu,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL

            name[1] = "@TenChatLieu"; value[1] = TenChatLieu;

            return thaotac.SQL_Thuchien("Insert_CHATLIEU", name, value, 2);

        }

        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện update

        public int Update_CHATLIEU(int MaChatLieu, string TenChatLieu)

        {

            name = new string[2];

            value = new object[2];

            name[0] = "@MaChatLieu"; value[0] = MaChatLieu;

            name[1] = "@TenChatLieu"; value[1] = TenChatLieu;//@MaChatLieu,... là các tham số phải giống với tham số khai báo ở Stores Procedures trong CSDL

            

            return thaotac.SQL_Thuchien("Update_CHATLIEU", name, value, 2);

        }

        //phương thức này gọi phương thức SQL_Thuchien ở lớp ThaoTac_CoSoDuLieu để thực hiện delete

        public int Delete_CHATLIEU(int MaChatLieu)

        {

            name = new string[1];

            value = new object[1];

            name[0] = "@MaChatLieu"; value[0] = MaChatLieu;

            return thaotac.SQL_Thuchien("Delete_CHATLIEU", name, value, 1);

        }
    }
}

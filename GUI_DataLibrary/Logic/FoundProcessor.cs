using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLibrary.DataAccess;
using DataLibrary.Models;

namespace DataLibrary.Logic
{
    public static class FoundProcessor
    {


        public static int CreateFound(string fName, string fPlace, DateTime fDateTime, string femailid, float fheight, string fdisc, string fage)
        {
            FoundModel data = new FoundModel
            {
                FName = fName,
                FPlace = fPlace,
                FDateTime = fDateTime,
                FEmailAddress = femailid,
                FHeight = fheight,
                FDisc = fdisc,
                FAge = fage,
            };

            string sql = @"insert into dbo.FoundT(FName,FPlace,FDateTime,FEmailAddress,FHeight,FDisc,FAge)
							values (@FName,@FPlace,@FDateTime,@FEmailAddress,@FHeight,@FDisc,@FAge)";
            return FoundDataAcess.SaveData(sql, data);
        }

        public static List<FoundModel> LoadFound()
        {
            string sql = @" select Id,FName,FPlace,FDateTime,FEmailAddress,FHeight,FDisc,FAge from dbo.FoundT";


            return FoundDataAcess.LoadData<FoundModel>(sql);
        }


    }
}

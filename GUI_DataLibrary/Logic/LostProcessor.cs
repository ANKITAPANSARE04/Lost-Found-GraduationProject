using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataLibrary.DataAccess;
using DataLibrary.Models;


namespace DataLibrary.Logic
{
    public static class LostProcessor
    {

        public static int CreateLost(string lName, string lPlace, DateTime lDateTime, string lemailid, float lheight, string ldisc, string lage)
        {
            LostModel data = new LostModel
            {
                LName = lName,
                LPlace = lPlace,
                LDateTime = lDateTime,
                LEmailAddress = lemailid,
                LHeight = lheight,
                LDisc = ldisc,
                LAge = lage,
            };

            string sql = @"insert into dbo.LostT(LName,LPlace,LDateTime,LEmailAddress,LHeight,LDisc,LAge)
							values (@LName,@LPlace,@LDateTime,@LEmailAddress,@LHeight,@LDisc,@LAge)";
            return LostDataAccess.SaveData(sql, data);
        }

        public static List<LostModel> LoadLost()
        {
            string sql = @" select Id,LName,LPlace,LDateTime,LEmailAddress,LHeight,LDisc,LAge from dbo.LostT";


            return LostDataAccess.LoadData<LostModel>(sql);
        }

    }
}
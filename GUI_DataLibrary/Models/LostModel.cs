using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataLibrary.Models
{
    public class LostModel
    {

        public int id { get; set; }
        public string LName{ get; set; }
        public string LPlace { get; set; }
        public DateTime  LDateTime { get; set; }
        public string LEmailAddress { get; set; }
        public float LHeight { get; set; }
        public string LDisc { get; set; }
        public string LAge { get; set; }
        //public Boolean Limg { get; set; }

    }
}

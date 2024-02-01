using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CookingGuinessBook
{
    public class Receipt
    {
        [PrimaryKey, AutoIncrement]
        public int id { set; get; }
        public string image_path { set; get; }
        public string name { set; get; }
        public string description { set; get; }
        public string receipt { set; get; }
        public receipts_types type { set; get; }
        public Receipt()
        {
            name = "DEFAULT";
            description = "DEFAULT";
            receipt = "DEFAULT";
            image_path = "pie.jpg";
            type = receipts_types.Bakery;
        }
        public Receipt(string name, string description, string receipt, string image_path, receipts_types new_type)
        {
            this.image_path = image_path;
            this.name = name;
            this.description = description;
            this.receipt = receipt;
            type = new_type;
        }
    }
}

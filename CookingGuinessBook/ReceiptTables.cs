using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CookingGuinessBook
{
    public class ReceiptTables
    {
        private const string data_base_file_name = "DataBase.db";
        SQLiteConnection data_base;
        public ReceiptTables()
        {
            data_base = new SQLiteConnection(
                Path.Combine(
                            Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), data_base_file_name));
            data_base.CreateTable<Receipt>();
        }
        public IEnumerable<Receipt> get_receipts()
        {
            return data_base.Table<Receipt>().ToList();
        }
        public void append_to_table(Receipt receipt)
        {
            if (receipt.id == 0)
            {
                data_base.Insert(receipt);
                return;
            }
            data_base.Update(receipt);
        }
        public void remove_from_table(int id)
        {
            data_base.Delete<Receipt>(id);
        }
        public Receipt get_receipt(int id)
        {
            Receipt receipt = data_base.Get<Receipt>(id);
            return receipt;
        }
        public void clear_table()
        {
            foreach (Receipt receipt in get_receipts())
            {
                remove_from_table(receipt.id);
            }
        }
    }
}

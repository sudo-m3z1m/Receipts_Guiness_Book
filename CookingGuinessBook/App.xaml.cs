using System.Runtime.InteropServices;

namespace CookingGuinessBook
{
    public enum receipts_types
    {
        Bakery,
        Salad,
        Steamed
    }
    public partial class App : Application
    {
        static public Dictionary<string, receipts_types> types_dict =
            new Dictionary<string, receipts_types>();
        public App()
        {
            InitializeComponent();
            types_dict.Add("Bakery", receipts_types.Bakery);
            types_dict.Add("Salad", receipts_types.Salad);
            types_dict.Add("Steamed", receipts_types.Steamed);
            MainPage = new AppShell();
        }
    }
}

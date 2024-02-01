namespace CookingGuinessBook
{
    public partial class MainPage : ContentPage
    {
        private ReceiptTables receipt_table;
        private string current_filter = "All";
        public MainPage()
        {
            InitializeComponent();
            receipt_table = new ReceiptTables();
            update_receipts();
        }
        private void update_receipts()
        {
            IEnumerable<Receipt> receipts = receipt_table.get_receipts();
            if (current_filter == "All")
            {
                collection_view.ItemsSource = receipts;
                return;
            }
            List<Receipt> filtered_receipts = new List<Receipt>();
            foreach (Receipt receipt in receipts)
            {
                if (receipt.type == App.types_dict[current_filter])
                {
                    filtered_receipts.Add(receipt);
                }
            }
            collection_view.ItemsSource = filtered_receipts;
        }
        private void Button_Clicked(object sender, EventArgs e)
        {
            update_receipts();
        }
        
        private async void Button_Clicked_1(object sender, EventArgs e)
        {
            bool result = await DisplayAlert("Clear receipts", "Are you sure?", "Yes", "No");
            if (result)
            {
                receipt_table.clear_table();
                update_receipts();
            }
        }

        private async void collection_view_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (collection_view.SelectedItem == null)
                return;
            Receipt tapped_receipt = (Receipt)collection_view.SelectedItem;
            ReceiptPage receipt_page = new ReceiptPage(tapped_receipt.id);
            await Navigation.PushAsync(receipt_page);
            collection_view.SelectedItem = null;
        }

        private async void Button_Clicked_2(object sender, EventArgs e)
        {
            current_filter = await DisplayActionSheet("Filter by", "Cancel", null, "All", "Bakery", "Salad", "Steamed");
            update_receipts();
        }
    }
}

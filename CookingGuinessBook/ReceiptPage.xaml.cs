namespace CookingGuinessBook;
public partial class ReceiptPage : ContentPage
{
	private ReceiptTables receipt_table = new ReceiptTables();
	private int receipt_id = 0;
	public ReceiptPage()
	{
		InitializeComponent();
		Receipt receipt = receipt_table.get_receipt(receipt_id);
		paste_page(receipt);
	}
	public ReceiptPage(int id)
	{
		InitializeComponent();
		receipt_id = id;
		Receipt receipt = receipt_table.get_receipt(receipt_id);
		paste_page(receipt);
	}
	public void paste_page(Receipt receipt)
	{
		name.Text = receipt.name;
		image.Source = receipt.image_path;
		description.Text = receipt.description;
		receipt_text.Text = receipt.receipt;
	}
    private async void Button_Clicked(object sender, EventArgs e)
    {
        Receipt receipt = receipt_table.get_receipt(receipt_id);
		paste_page(receipt);
		await Navigation.PushAsync(new EditReceiptPage(receipt_id));
    }
    private async void Button_Clicked_1(object sender, EventArgs e)
    {
		bool result = await DisplayAlert("Delete receipt", "Are you sure?", "Yes", "No");
		if (result)
		{
			receipt_table.remove_from_table(receipt_id);
			await Navigation.PopAsync();
		}
		return;
    }
}
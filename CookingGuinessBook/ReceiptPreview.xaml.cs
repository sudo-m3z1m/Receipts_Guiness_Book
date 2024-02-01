namespace CookingGuinessBook;

public partial class ReceiptPreview : Frame
{
	private int receipt_id;
	ReceiptTables receipt_table;
	public ReceiptPreview()
	{
		InitializeComponent();
		paste_preview();
	}
	public ReceiptPreview(int id)
	{
		InitializeComponent();
		Receipt current_receipt;
		receipt_table = new ReceiptTables();
		receipt_id = id;

		current_receipt = receipt_table.get_receipt(receipt_id);
		paste_preview(current_receipt.name, current_receipt.image_path, current_receipt.description);
	}
	public void paste_preview(string pre_name = "DEFAULT", string pre_image_path = "pie.jpg",
		string pre_description = "DEFAULT")
	{
		name.Text = pre_name;
		image.Source = pre_image_path;
		description.Text = pre_description;
	}

    private void TapGestureRecognizer_Tapped(object sender, TappedEventArgs e)
    {
		App.Current.MainPage = new NavigationPage(new ReceiptPage(receipt_id));
	}
}
namespace CookingGuinessBook;

public partial class EditReceiptPage : ContentPage
{
	private int receipt_id = 0;
	private ReceiptTables tables = new ReceiptTables();
    private FileResult file = null;
    private List<string> types = new List<string> { "Bakery", "Salad", "Steamed" };

    public EditReceiptPage()
	{
		InitializeComponent();
        type_picker.ItemsSource = types;
        type_picker.SelectedIndex = 0;
	}

	public EditReceiptPage(int receipt_id)
    {
        InitializeComponent();
        this.receipt_id = receipt_id;
        type_picker.ItemsSource = types;
        type_picker.SelectedIndex = 0;
    }

    private async void Button_Clicked(object sender, EventArgs e)
    {
        file = await FilePicker.PickAsync();
        if (file != null)
            receipt_image.Source = file.FullPath;
    }

    private async void Button_Clicked_1(object sender, EventArgs e)
    {
        Receipt receipt = tables.get_receipt(receipt_id);
        if (file != null)
            receipt.image_path = file.FullPath;
        if (name.Text != null)
            receipt.name = name.Text;
        if (description.Text != null)
            receipt.description = description.Text;
        if (receipt_text.Text != null)
            receipt.receipt = receipt_text.Text;
        receipt.type = App.types_dict[(string)type_picker.SelectedItem];
        tables.append_to_table(receipt);
        await Navigation.PopAsync();
    }
}
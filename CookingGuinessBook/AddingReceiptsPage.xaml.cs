using Microsoft.Extensions.Options;

namespace CookingGuinessBook;

public partial class AddingReceiptsPage : ContentPage
{
    private ReceiptTables receipt_table;
    private FileResult file;
    private Receipt added_receipt;
    private List<string> types;
    public AddingReceiptsPage()
    {
        InitializeComponent();
        types = new List<string>();
        types.Add("Bakery"); types.Add("Salad"); types.Add("Steamed");
        type_picker.ItemsSource = types;
        type_picker.SelectedIndex = 0;
        receipt_table = new ReceiptTables();
    }
    private async void Button_Clicked(object sender, EventArgs e)
    {
        file = await FilePicker.PickAsync();
    }
    private void Button_Clicked_1(object sender, EventArgs e)
    {
        added_receipt = paste_receipt();
        render_receipt();
    }
    private void Button_Clicked_2(object sender, EventArgs e)
    {
        receipt_table.append_to_table(added_receipt);
    }
    private Receipt paste_receipt()
    {
        string file_path = null;
        string type = (string)type_picker.SelectedItem;
        if (file != null)
            file_path = file.FullPath;
        Receipt new_receipt = new Receipt(name.Text, description.Text, receipt.Text, file_path, App.types_dict[type]);
        return new_receipt;
    }
    private void render_receipt()
    {
        receipt_name.Text = added_receipt.name;
        receipt_image.Source = added_receipt.image_path;
        receipt_description.Text = added_receipt.description;
        receipt_text.Text = added_receipt.receipt;
    }
}
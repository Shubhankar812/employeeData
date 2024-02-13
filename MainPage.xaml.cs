using System.Net.Http;
using System.Text.Json;
using EmployeeData.Models;
using Microsoft.Maui.Controls;

namespace EmployeeData
{
    public partial class MainPage : ContentPage
    {
        private List<Data>? lst;
        private const string api_url = "https://dummy.restapiexample.com/api/v1/employees";
        public int id;
        public string name;
        public int salary;
        public int age;

        public MainPage()
        {
            InitializeComponent();
            FetchAndDisplayData();
        }

        private async void FetchAndDisplayData()
        {
            try
            {
                using (HttpClient client = new HttpClient())
                {
                    HttpResponseMessage response = await client.GetAsync(api_url);

                    if (response.IsSuccessStatusCode)
                    {
                        string json = await response.Content.ReadAsStringAsync();
                        

                        try
                        {
                            RootObject? result = JsonSerializer.Deserialize<RootObject>(json);

                            if (result != null && result.data != null)
                            {
                                lst = result.data;
                                employeeListView.ItemsSource = lst;
                            }
                            else
                            {
                                await DisplayAlert("Error", "Failed to deserialize data", "OK");
                            }
                        }
                        catch (JsonException ex)
                        {
                            Console.WriteLine($"Exception occurred during deserialization: {ex}");
                            await DisplayAlert("Error", "Failed to deserialize data", "OK");
                        }
                    }
                    else
                    {
                        await DisplayAlert("Error", "Failed to fetch data", "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Exception occurred: {ex}");
                await DisplayAlert("Error", $"{ex.Message}", "OK");
            }
        }

        private async void employeeListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if(e.SelectedItem != null && e.SelectedItem is Data SelectedItem)
            {
                id = SelectedItem.id;
                name = SelectedItem.employee_name;
                salary = SelectedItem.employee_salary;
                age = SelectedItem.employee_age;
            }
            await Navigation.PushAsync(new DetailsPage(id,name,salary,age));
        }
    }
}

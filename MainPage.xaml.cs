

using System.Text.Json;
using System.Text.Json.Nodes;

namespace EmployeeData
{
    public partial class MainPage : ContentPage
    {
        int count = 0;
        private List<Data> ?lst;
        private const string api_url = "https://dummy.restapiexample.com/api/v1/employees";
       
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
                    if(response.IsSuccessStatusCode)
                    {
                        string json = await response.Content.ReadAsStringAsync();
                        if (json != null)
                        {
                            RootObject ?result = JsonSerializer.Deserialize<RootObject>(json);
                            if (result != null)
                            {
                                
                                string name = lst.FirstOrDefault()?.employee_name!;
                               
                                employeeListView.ItemsSource = result!.data;
                                
                            }
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
                await DisplayAlert("Error", $"{ex.Message}", "OK");
            }
            
        }

      
    }
   
}
    public class Data
    {
        public int id { get; set; }
        public string employee_name { get; set; }
        public int employee_salary { get; set; }
        public int employee_age { get; set; }
        public string profile_image { get; set; }
    }

    public class RootObject
    {
        public string status { get; set; }
        public List<Data> data { get; set; }
        public string message { get; set; }
    }



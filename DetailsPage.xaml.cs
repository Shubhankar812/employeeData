namespace EmployeeData;

public partial class DetailsPage : ContentPage
{
	private int emp_id;
	private string emp_name;
	private int emp_salary;
	private int emp_age;
	public DetailsPage(int id,string name,int salary,int age)
	{
		InitializeComponent();
		this.emp_id = id;
		this.emp_name = name;
		this.emp_salary = salary;
		this.emp_age = age;
	}

    protected override void OnAppearing()
    {
        base.OnAppearing();
		EmpID.Text = emp_id.ToString();
		EmpName.Text = emp_name;
		EmpSalary.Text=emp_salary.ToString();
		EmpAge.Text=emp_age.ToString();
    }
}
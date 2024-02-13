using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EmployeeData.Models
{
    public class RootObject
    {
        public string status { get; set; }
        public List<Data> data { get; set; }
        public string message { get; set; }
    }
}

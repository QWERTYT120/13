using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp7.Model
{
    public class LocalDataProvider : IDataProvider
    {
        public IEnumerable<Bus> GetBus()
        {
            return new Bus[]{
                new Bus{Number="а111аа",Departure="5/05/2021 17:15:00 AM", Fare="700", Buss="Man Lion's"},
                new Bus{Number="а455аа",Departure="5/05/2021 17:30:00 AM", Fare="850", Buss="Mercedes-Benz Sprinter"},
                new Bus{Number="а333аа",Departure="5/05/2021 17:45:00 AM", Fare="850", Buss="Hyundai H350"}
            };
        }
    }
}

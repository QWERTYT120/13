using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfApp7.Model
{
    interface IDataProvider
    {
        IEnumerable<Bus> GetBus();
    }
}

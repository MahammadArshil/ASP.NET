using Program_33.Models;
namespace Program_33.Reposotory
{
    public class Demo1
    {
        public List<Demo> Get()
        {
            return Data();
        }
        public Demo Get1(int id)
        {
            return Data().Where(x => x.Id == id).FirstOrDefault();
        }
        public List<Demo> Get2(string name,string description) 
        {
            return Data().Where(x => x.Name == name && x.Description==description ).ToList();
        }
        private List<Demo> Data()
        {
            return new List<Demo>()
            {
                new Demo(){Id=1,Name="Khushi",Description="Female"},
                new Demo(){Id=2,Name="Dhruvi",Description="Female"},
                new Demo(){Id=3,Name="Margi",Description="Female"}
            };
        }
    }
}

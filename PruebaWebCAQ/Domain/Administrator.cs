
namespace PruebaWebCAQ.Domain
{
    public class Administrator
    {
        private int idAdmin;
        private string username;
        private string password;

        public Administrator(int id, string user, string pass)
        {
            this.idAdmin = id;
            this.username = user;
            this.password = pass;
        }

        public Administrator(string user, string pass)
        {
            this.username = user;
            this.password = pass;
        }

        public int IdAdmin
        {
            get
            {
                return idAdmin;
            }

            set
            {
                idAdmin = value;
            }
        }

        public string Username
        {
            get
            {
                return username;
            }

            set
            {
                username = value;
            }
        }

        public string Password
        {
            get
            {
                return password;
            }

            set
            {
                password = value;
            }
        }
    }
}
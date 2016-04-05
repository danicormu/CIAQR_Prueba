using System.IO;


namespace PruebaWebCAQ.Domain
{
    class Galery
    {
        private int id;
        private string name;
        private string description;
        private Stream photo;
        private string date;
        private byte[] photoToInsert;

        public Galery(int id, string name, string description, Stream photo, string date)
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.photo = photo;
            this.date = date;
        }

        public Galery(int id, string name, string description, string date)
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.date = date;
        }
        public Galery(string name, string description, byte[] photo, string date)
        {
            this.name = name;
            this.description = description;
            this.photoToInsert = photo;
            this.date = date;
        }
        public int Id
        {
            get
            {
                return id;
            }

            set
            {
                id = value;
            }
        }

        public string Name
        {
            get
            {
                return name;
            }

            set
            {
                name = value;
            }
        }

        public string Description
        {
            get
            {
                return description;
            }

            set
            {
                description = value;
            }
        }

        public Stream Photo
        {
            get
            {
                return photo;
            }

            set
            {
                photo = value;
            }
        }

        public string Date
        {
            get
            {
                return date;
            }

            set
            {
                date = value;
            }
        }

        public byte[] PhotoToInsert
        {
            get
            {
                return photoToInsert;
            }

            set
            {
                photoToInsert = value;
            }
        }
    }
}

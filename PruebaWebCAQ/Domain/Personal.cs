using System.IO;

namespace PruebaWebCAQ.Domain
{
    class Personal
    {
        private int id;
        private string name;
        private string description;
        private string rol;
        private Stream photo;
        private byte[] photoToInsert;

        public Personal(int id, string name, string description, string rol, Stream photo)
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.rol = rol;
            this.photo = photo;
        }

        public Personal(string name, string description, string rol, byte[] photo)
        {
            this.name = name;
            this.description = description;
            this.rol = rol;
            this.photoToInsert = photo;
        }

        public Personal(int id, string name, string description, string rol)
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.rol = rol;
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

        public string Rol
        {
            get
            {
                return rol;
            }

            set
            {
                rol = value;
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

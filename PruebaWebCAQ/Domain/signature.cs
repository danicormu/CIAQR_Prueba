

namespace PruebaWebCAQ.Domain
{
    class Signature
    {
        private int signatureId;
        private string name;
        private string day;
        private string professor;
        private string grupoId;
        private int levelId;

        public Signature(int signatureId, string name, string day, string professor, string grupoId, int levelId)
        {
            this.signatureId = signatureId;
            this.name = name;
            this.day = day;
            this.professor = professor;
            this.grupoId = grupoId;
            this.levelId = levelId;
        }

        public Signature(string name, string day, string professor, string grupoId, int levelId)
        {
            this.name = name;
            this.day = day;
            this.professor = professor;
            this.grupoId = grupoId;
            this.levelId = levelId;
        }

        public int SignatureId
        {
            get
            {
                return signatureId;
            }

            set
            {
                signatureId = value;
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

        public string Professor
        {
            get
            {
                return professor;
            }

            set
            {
                professor = value;
            }
        }

        public string GrupoId
        {
            get
            {
                return grupoId;
            }

            set
            {
                grupoId = value;
            }
        }

        public int LevelId
        {
            get
            {
                return levelId;
            }

            set
            {
                levelId = value;
            }
        }

        public string Day
        {
            get
            {
                return day;
            }

            set
            {
                day = value;
            }
        }
    }
}



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
        private string startTime;
        private string endTime;

        public Signature(int signatureId, string name, string day, string professor, string grupoId, int levelId, string startTime, string endTime)
        {
            this.signatureId = signatureId;
            this.name = name;
            this.day = day;
            this.professor = professor;
            this.grupoId = grupoId;
            this.levelId = levelId;
            this.startTime = startTime;
            this.endTime = endTime;
        }

        public Signature(string name, string day, string professor, string grupoId, int levelId, string startTime, string endTime)
        {
            this.name = name;
            this.day = day;
            this.professor = professor;
            this.grupoId = grupoId;
            this.levelId = levelId;
            this.startTime = startTime;
            this.endTime = endTime;
        }

        public Signature(string name, string day, string professor, string startTime, string endTime)
        {
            this.name = name;
            this.day = day;
            this.professor = professor;
            this.startTime = startTime;
            this.endTime = endTime;
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

        public string StartTime
        {
            get
            {
                return startTime;
            }

            set
            {
                startTime = value;
            }
        }

        public string EndTime
        {
            get
            {
                return endTime;
            }

            set
            {
                endTime = value;
            }
        }
    }
}

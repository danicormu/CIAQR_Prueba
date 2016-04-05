
namespace PruebaWebCAQ.Domain
{
    class Chronogram
    {
        private int idChronogram;
        private string beginTime;
        private string endTime;

        public Chronogram(int idChronogram, string beginTime, string endTime)
        {
            this.IdChronogram = idChronogram;
            this.BeginTime = beginTime;
            this.EndTime = endTime;
        }

        public Chronogram(string beginTime, string endTime)
        {
            this.BeginTime = beginTime;
            this.EndTime = endTime;
        }

        public int IdChronogram
        {
            get
            {
                return idChronogram;
            }

            set
            {
                idChronogram = value;
            }
        }

        public string BeginTime
        {
            get
            {
                return beginTime;
            }

            set
            {
                beginTime = value;
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

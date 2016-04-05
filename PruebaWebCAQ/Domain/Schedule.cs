
namespace PruebaWebCAQ.Domain
{
    class Schedule
    {
        private string day;
        private string startTime;
        private string endTime;
        private string groupId;
        private int levelId;
        private int scheduleId;

        public Schedule(string day, string startTime, string endTime, string groupId, int levelId)
        {
            this.day = day;
            this.startTime = startTime;
            this.endTime = endTime;
            this.groupId = groupId;
            this.levelId = levelId;
        }
        public Schedule(string day, string startTime, string endTime, string groupId, int levelId, int scheduleId)
        {
            this.day = day;
            this.startTime = startTime;
            this.endTime = endTime;
            this.groupId = groupId;
            this.levelId = levelId;
            this.scheduleId = scheduleId;
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

        public string GroupId
        {
            get
            {
                return groupId;
            }

            set
            {
                groupId = value;
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

        public int ScheduleId
        {
            get
            {
                return scheduleId;
            }

            set
            {
                scheduleId = value;
            }
        }
    }
}

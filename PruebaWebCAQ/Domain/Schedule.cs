
namespace PruebaWebCAQ.Domain
{
    class Schedule
    {
        private string day;
        private string groupId;
        private int levelId;
        private int scheduleId;

        public Schedule(string day, string groupId, int levelId)
        {
            this.day = day;
            this.groupId = groupId;
            this.levelId = levelId;
        }
        public Schedule(string day, string groupId, int levelId, int scheduleId)
        {
            this.day = day;
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

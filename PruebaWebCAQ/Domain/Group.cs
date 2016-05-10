
namespace PruebaWebCAQ.Domain
{
    class Group
    {
        private string groupName;
        private int levelId;

        public Group(string group, int levelId)
        {
            this.groupName = group;
            this.levelId = levelId;
        }

        public Group(string group)
        {
            this.groupName = group;
        }

        public string GroupName
        {
            get
            {
                return groupName;
            }

            set
            {
                groupName = value;
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
    }
}

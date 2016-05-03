

namespace PruebaWebCAQ.Domain
{
    class Event
    {
        private int eventId;
        private string eventName;
        private string description;
        private string date;
        private string eventType;
        private int chronogramId;

        public Event(int eventId, string eventName, string description, string date, string eventType, int chronogramId)
        {
            this.eventId = eventId;
            this.eventName = eventName;
            this.description = description;
            this.date = date;
            this.eventType = eventType;
            this.chronogramId = chronogramId;
        }

        public Event(int eventId, string eventName, string description, string date, string eventType)
        {
            this.eventId = eventId;
            this.eventName = eventName;
            this.description = description;
            this.date = date;
            this.eventType = eventType;
        }

        public Event(string eventName, string description, string date, string eventType, int chronogramId)
        {
            this.eventName = eventName;
            this.description = description;
            this.date = date;
            this.eventType = eventType;
            this.chronogramId = chronogramId;
        }

        public Event(string eventName, string description, string date, string eventType)
        {
            this.eventName = eventName;
            this.description = description;
            this.date = date;
            this.eventType = eventType;
        }

        public int EventId
        {
            get
            {
                return eventId;
            }

            set
            {
                eventId = value;
            }
        }

        public string EventName
        {
            get
            {
                return eventName;
            }

            set
            {
                eventName = value;
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

        public int ChronogramId
        {
            get
            {
                return chronogramId;
            }

            set
            {
                chronogramId = value;
            }
        }

        public string EventType
        {
            get
            {
                return eventType;
            }

            set
            {
                eventType = value;
            }
        }
    }
}

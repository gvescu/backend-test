class EventDate < ActiveRecord::Base
    belongs_to :event

    def get_date
        return self.event_datetime.strftime("%D")
    end

    def get_time
        return self.event_datetime.strftime("%R")
    end
end

class EventDate < ActiveRecord::Base
    belongs_to :event

    validates :event_datetime, :event_price, presence: true

    def get_date
        return self.event_datetime.strftime("%D")
    end

    def get_time
        return self.event_datetime.strftime("%R")
    end
end

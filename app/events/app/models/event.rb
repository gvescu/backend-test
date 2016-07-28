class Event < ActiveRecord::Base
    has_many :event_dates

    accepts_nested_attributes_for :event_dates, reject_if: :all_blank, allow_destroy: true

    self.per_page = 10

    def self.with_event_datetime
        self.select("events.*, event_dates.event_datetime as event_datetime").joins(:event_dates).order("event_datetime")
    end

    def self.highlights_today
        today = Time.zone.now.beginning_of_day
        #TODO
    end
end

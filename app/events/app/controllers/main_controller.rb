class MainController < ApplicationController

    def index
        today = Time.zone.now.beginning_of_day
        tomorrow = Time.zone.now.end_of_day
        @events = Event.with_event_datetime.where("event_datetime >= ?", Time.zone.now).limit(6)
        @highlights = Event.with_event_datetime.where("starred = 't' and event_datetime between ? and ?", today, tomorrow)
    end
    
end

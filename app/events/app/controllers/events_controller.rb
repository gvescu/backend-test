class EventsController < ApplicationController

    def index
    end

    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    def event_params
        params.require(:event).permit(:title, :description, :location, :starred, :image_url, event_dates_attributes: [:id, :event_id, :event_datetime, :event_price, :_destroy])
    end
end

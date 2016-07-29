class EventsController < ApplicationController

    before_action :authorize, except: [:show]

    def index
        @events = Event.page(params[:p]).order("title ASC")
    end

    def show
        @event = Event.find(params[:id])
        if @event.nil?
            render text: 'not found', status: 404
        end
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new(event_params)
        if @event.save
            redirect_to event_path(@event.id)
        else
            render action: :new
        end
    end

    def edit
        @event = Event.find(params[:id])
    end

    def update
        @event = Event.find(params[:id])
        if @event.update_attributes(event_params)
            redirect_to event_path(@event.id)
        else
            render action: :new
        end
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy
        redirect_to :events
    end

    private
    def event_params
        params.require(:event).permit(:title, :description, :location, :starred, :image_url, event_dates_attributes: [:id, :event_id, :event_datetime, :event_price, :_destroy])
    end
end

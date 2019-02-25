class EventsController < ApplicationController
    def show
        @event = Event.find(params[:id])
    end
    
    def edit
        @event = Event.find(params[:id])
    end

    def update

    end

    def destroy
        event = Event.find(params[:id])
        event.delete
        redirect_to "/" 
    end
end

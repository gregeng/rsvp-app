class EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def create
    Event.create(event_params)
    redirect_to(events_path)
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @users = @event.users
  end


private
  def event_params
    params.require(:event).permit(:name)
  end
end

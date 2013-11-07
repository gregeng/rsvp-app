class InvitesController < ApplicationController

  def new
    @user = User.new
    @event = Event.find(params[:event_id])
  end

  def edit
    @invite = Invite.find(params[:id])
  end

  def update
    @invite = Invite.find(params[:invite][:invite_id])
    @invite.attending = params[:invite][:attending]
    @invite.save

    redirect_to events_path
  end


end

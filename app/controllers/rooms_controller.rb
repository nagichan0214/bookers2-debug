class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :reject_non_related, only: [:show]
  
  def create
    @room = Room.create
    @entry1 = Entry.create(room_id: @room.id, user_id: current_user.id)
    @entry2 = Entry.create(params)
end

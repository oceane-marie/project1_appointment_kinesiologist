class UsersController < ApplicationController
  def show
    @user = current_user
    @appointments = Appointment.where(user_id: @user)
  end
end

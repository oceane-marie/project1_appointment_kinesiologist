class UsersController < ApplicationController
  def show
    @user = current_user
    @appointments = Appointment.where(user: current_user)
  end
end

class UsersController < ApplicationController
  def show
    @user = current_user
    @appointments = Appointment.where(user: current_user)
    @pending_appointments = Appointment.where('date >= ?', DateTime.now)
    @checked_appointments = Appointment.where('date < ?', DateTime.now)
  end
end

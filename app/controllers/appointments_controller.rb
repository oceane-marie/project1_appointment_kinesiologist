class AppointmentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def new
    @appointment = Appointment.new
  end

  def create
    @user = current_user
    @appointments = Appointment.create(appointment_params)
    redirect_to user_path(current_user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time)
  end
end

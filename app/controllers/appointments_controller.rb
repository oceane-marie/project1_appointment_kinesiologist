class AppointmentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def new
    @appointment = Appointment.new
    @user = current_user
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @user = current_user
    if @appointment.save
      redirect_to user_path(current_user)
    end
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time)
  end
end

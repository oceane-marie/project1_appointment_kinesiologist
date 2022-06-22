class AppointmentsController < ApplicationController
  def new
    @appointment = Appointment.new
  end

  def create
    @appointments = Appointment.create(appointment_params)
    if user_signed_in?
      @user = current_user
    else
      redirect_to new_user_session_path
    end
    redirect_to user_path(current_user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time)
  end
end

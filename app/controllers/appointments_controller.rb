class AppointmentsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def new
    @appointment = Appointment.new
    @user = User.find(params[:user_id])
  end

  def create
    @user = User.find(params[:user_id])
    @appointment = Appointment.new(appointment_params)
    @appointment.user = @user

    if @appointment.save
      UserMailer.with(user: @user, appointment: @appointment).appointment.deliver_later
      redirect_to user_path(current_user)
    end

  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time)
  end
end

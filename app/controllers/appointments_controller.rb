class AppointmentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

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

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to user_path(current_user)
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date, :time)
  end
end

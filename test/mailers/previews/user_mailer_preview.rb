# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/appointment
  def appointment
    user = User.first
    appointment = Appointment.last

    # This is how you pass value to params[:user] inside mailer definition!
    UserMailer.with(user: user, appointment: appointment).appointment
  end

end

class UserMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.appointment.subject
  #
  def appointment
    @user = params[:user] # Instance variable => available in view
    # @date = appointment.date
    # @time = appointment.time
    mail(to: @user.email, subject: 'Votre rendez-vous a bien été confirmé')
    # This will render a view in `app/views/user_mailer`!
  end
end

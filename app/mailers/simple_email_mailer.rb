class SimpleEmailMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.simple_email_mailer.just_send_an_email.subject
  #
  def just_send_an_email
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

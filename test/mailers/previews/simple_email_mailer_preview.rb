# Preview all emails at http://localhost:3000/rails/mailers/simple_email_mailer
class SimpleEmailMailerPreview < ActionMailer::Preview
  # Preview this email at http://localhost:3000/rails/mailers/simple_email_mailer/just_send_an_email
  def just_send_an_email
    SimpleEmailMailer.just_send_an_email
  end
end

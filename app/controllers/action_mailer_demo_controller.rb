class ActionMailerDemoController < ApplicationController

  def index

  end

  def simple_email

    simple_email = SimpleEmailMailer.just_send_an_email
    result = simple_email.deliver_now

    puts "Email start >>>>>>>>>>>>>>>>>>>>>>>>>>"
    # result ist der email text
    puts result
    puts "Email end <<<<<<<<<<<<<<<<<"
    respond_to do |format|
      format.html { render "action_mailer_demo/simple_email" }
    end

  end

end

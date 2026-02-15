class ActionMailerDemoController < ApplicationController

  def index

  end

  def simple_email

    simple_email = SimpleEmailMailer.just_send_an_email
    result = simple_email.deliver_now

    puts "Email start >>>>>>>>>>>>>>>>>>>>>>>>>>"
    puts result
    puts "Email end <<<<<<<<<<<<<<<<<"

  end

end

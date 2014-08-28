class ApiMailer < ActionMailer::Base
  default from: "noreply@example.com"
  layout false
  def send_email(opt = {})
  	mail(opt.merge({from: "\NoReply\ <noreply@example.com>"}))
  end
end

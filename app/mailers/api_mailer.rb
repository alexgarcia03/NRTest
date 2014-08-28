class ApiMailer < ActionMailer::Base
  default from: "noreply@example.com"

  def send_email(opt = {})
  	mail(opt)
  end
end

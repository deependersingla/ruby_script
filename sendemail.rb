require 'action_mailer'

ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    address: "pro.turbo-smtp.com",
    port: 587,
    domain: ENV["DOMAIN_NAME"],
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: 'deepender281190@gmail.com',
    password: 'FRmfpcBD'
  }
ActionMailer::Base.view_paths= File.dirname(__FILE__)

class Mailer < ActionMailer::Base

  def self.daily_email
    #@var = "var"
   mail(   :to      => "deepender281190@gmail.com",       :from    => "test@domain.com.ar",:subject => "testing mail")
  end
end
email = Mailer.daily_email
puts email
#email.deliver



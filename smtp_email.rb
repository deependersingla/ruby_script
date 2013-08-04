require 'net/smtp'

message = <<MESSAGE_END
From: Private Person <deepender.singla@yifp.com>
To: A Test User <deepender281190@gmail.com>
Subject: SMTP e-mail test

This is a test e-mail message.
MESSAGE_END

Net::SMTP.start('localhost') do |smtp|
  smtp.send_message message, 'deepender.singla@yifp.com', 
                             'deepender281190@gmail.com'
end
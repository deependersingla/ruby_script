require 'mail'

options = { address: "pro.turbo-smtp.com",
    port: 587,
    domain: ENV["DOMAIN_NAME"],
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: 'u',don't know me
    password: 'FRmfpcBD'}



Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
       to 'fellows2014@yifp.in'
     from 'prabhat.kumar@yifp.in'
  subject 'unclaimed'
     body 'If someone found any unclaimed material ranging from chappal to cap, can drop at my room no: 407 or if room is locked can leave outside the door.'
end
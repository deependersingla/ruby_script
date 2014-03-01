require 'mail'

options = { address: "pro.turbo-smtp.com",
    port: 587,
    domain: ENV["DOMAIN_NAME"],
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: '',
    password: 'FRmfpcBD'}



Mail.defaults do
  delivery_method :smtp, options
end

Mail.deliver do
       to 'shravan.kumar@ashoka.edu.in'
     from 'info@yifp.in,'
  subject 'YoungIndiaFellowship'
      html_part do
    content_type 'text/html; charset=UTF-8'
    body 'Last date to apply for the fellowship is&nbsp;<span><span><span tabindex="0" class="aBn" data-term="goog_1811811935"><span class="aQJ">28th Feb.</span></span></span></span><br><br><br>

<span style="font-family:verdana,geneva,sans-serif;font-size:14px">Dear Shravan</span>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif"><br><br><br>Thank you for your interest in the&nbsp;<strong><a href="http://youngindiafellowship.com/" target="_blank">Young India Fellowship</a></strong>. Since you are in the process of&nbsp;applying&nbsp;for the Fellowship, we are sending you this mail to&nbsp;remind&nbsp;you of the&nbsp;application&nbsp;deadline for the Young India Fellowship programme,&nbsp;which is <span tabindex="0" class="aBn" data-term="goog_1811811875"><span class="aQJ">28th of February 2014</span></span>. However, since we follow a rolling admissions process and we have limited seats, we encourage applicants to apply as soon as possible. Interview process will start in March 2014.</span></span><br><br>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">The academic session starts in July 2014.</span></span><br><br>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">Feel free to write to us at&nbsp;<strong><a href="mailto:admissions@yifp.in" target="_blank"><span style="color:rgb(34,34,34)">info@yifp.in</span></a></strong>&nbsp;for any queries. We look forward to receiving your completed&nbsp;application&nbsp;at the earliest.</span></span><br><br>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif"><strong>Please note:</strong>&nbsp;In case you have already submitted your applications, please ignore this mail. Also if you have submitted your application in Round 1 then you cannot apply again in Round 2.</span></span><br><br>



<div><span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">Click here to&nbsp;<a href="http://youngindiafellowship.com/Apply-Now.aspx?4" target="_blank"><strong><font color="#1155cc">apply</font></strong></a></span></span></div>



<div>&nbsp;</div><div><span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">Click here to&nbsp;<a href="http://youngindiafellowship.com/Apply-Now.aspx?4" target="_blank"><strong><font color="#1155cc">reset</font></strong></a>&nbsp;password for your online application form.</span></span></div>

<br><br>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">Warm regards,</span></span><br>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">Admissions Team</span></span><br>
<a href="http://youngindiafellowship.com/" target="_blank"><span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif"><strong><font color="#1155cc">Young India Fellowship</font></strong></span></span></a><br>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">Sri Aurobindo Centre for Arts &amp; Communication Campus,</span></span><br>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">Shaheed Jeet Singh Marg, New Delhi-110017</span></span><br>
<span style="font-size:14px"><span style="font-family:verdana,geneva,sans-serif">+91 011-65652643</span></span>'
  end
end
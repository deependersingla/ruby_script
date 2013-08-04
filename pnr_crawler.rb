
=begin
Requirements

1>>Customer inputs
>>Pnr no, 
>>mobile no.

2>>>The system verifies the PNR No is valid and gives access to customer
3>> customer chooses lunch /dinner
4>> based on the train data>> the system finds out the best junction stop ocurring at the lunch time i.e 12-2.30pm,7-9.30 for dinner>> all orders will be accepted a min.of 3 hrs before the train arriving at chosen junction?/

5>>gives option for food at the best junction 1.packed meal >>options north indian veg /non veg or south indian veg/non veg 2.ala carte>>.list of restaurants with menu card and ordering interface and MOQ check for certain restaurants(min order qty)
6>>customer orders>> has to validate if human>>>payments>>cod/card
7>>> customer +coach+order details needs to be sent via sms/mail to whom so ever concerned 
=end

require 'rubygems'
require 'mechanize'
Pnr_no=4150702245
agent = Mechanize.new
page = agent.get('http://www.indianrail.gov.in/pnr_Enq.html')
form = agent.page.forms[0]
print agent.page.forms[0].fields
agent.page.forms[0]["lccp_pnrno1"] = Pnr_no
button = agent.page.forms[0].button_with(:value => "Get Status")
# submit the form using the button
pages=agent.submit(form, button)
#train number query
puts pages.at('table.table_border').search('.//tr[3]/td[1]').text
#Journey date
puts pages.at('table.table_border').search('.//tr[3]/td[3]').text
#starting station
puts pages.at('table.table_border').search('.//tr[3]/td[4]').text
#end Station
puts pages.at('table.table_border').search('.//tr[3]/td[5]').text
#current status -seat no
puts pages.at('.//table[@id="center_table"]/tr[2]/td[2]').text
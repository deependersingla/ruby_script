=begin
the script goes throught the internet finds out best stock

=end
require 'mechanize'
require 'rubygems'
require 'active_record'
require 'mysql2'
require 'nokogiri'
require 'open-uri'

Company_name='Atul Auto Ltd.'
agent = Mechanize.new
page = agent.get('http://www.screener.in/')
form = agent.page.forms[0]
print agent.page.forms[0].fields
agent.page.forms[0]["q"]=Company_name
button = agent.page.forms[0].button_with(:value => "Search Company")
pages=agent.submit(form, button)
#puts pages.at('.//*[@id="top"]/div[3]/div/table/tbody/tr/td[11]')    # xpath is not working
#puts pages.at('//*[@id="top"]/div[3]/div/table/tbody/tr/td[12]')     # xpath is not working
new_page=pages.uri.to_s
doc=Nokogiri::HTML(open(new_page))
row_data = doc.css('.table.draggable.table-striped.table-hover tr.strong td').map do |tdata|
  tdata.text
end
 #From the webpage I took the below value from the table     
#print row_data

p doc.at_xpath("//*[@id='peers']/table/tbody/tr[6]/td[3]").text
p doc.at_xpath("//*[@id='peers']/table/tbody/tr[6]/td[10]").text
p doc.at_xpath("//*[@id='peers']/table/tbody/tr[6]/td[10]").text

#node = doc.xpath('//*[@id="top"]/div[3]/div/table/tbody/tr/td[12]')  # not working

ActiveRecord::Base.establish_connection ({
  :adapter => "mysql2",
  :host => "localhost",
  :username => "root",
  :password => "deepender",
  :database => "rain"})

  
 class Graphs < ActiveRecord::Base  
end  


# writing to the database
Graphs.create(:stock_name => Company_name, :price => row_data.last)  
#puts Graphs.all
=begin
stock crawler using css selector
=end

require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.screener.in/company/?q=Atul+Auto+Ltd.'))

doc.class
# => Nokogiri::HTML::Document
doc.css('.table.draggable.table-striped.table-hover tr.strong td').class
# => Nokogiri::XML::NodeSet

row_data = doc.css('.table.draggable.table-striped.table-hover tr.strong td').map do |tdata|
  tdata.text
end

print row_data

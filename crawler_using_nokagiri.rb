require 'nokogiri'
require 'open-uri'


doc = Nokogiri::HTML(open('http://www.screener.in/company/?q=Atul+Auto+Ltd.'))

doc.class
puts doc.css('.table.draggable.table-striped.table-hover.tbody')
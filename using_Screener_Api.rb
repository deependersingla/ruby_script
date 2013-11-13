require 'rubygems'
require 'mechanize'

string="INE062D01024,INE365D01013,INE951D01010"
agent = Mechanize.new
pages='http://www.screener.in/api/prices/?isin='
pages=pages+string
#p pages
page = agent.get(pages)
print page.body
stock_all=page.body
stock_all=stock_all.split(' ')
#p stock_all[1]
stock_array=Array.new
stock_all.each do |s|
  s=s.split(',')
  stock_array.push("isn"=>s[0],"price"=>s[1])
  #p s[0]
end
stock_array=stock_array.uniq
p stock_array
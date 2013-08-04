require 'rubygems'
require 'active_record'
require 'mechanize'
require 'nokogiri'
require 'active_record'
require 'mysql2'

ActiveRecord::Base.establish_connection ({
  :adapter => "mysql2",
  :host => "localhost",
  :username => "root",
  :password => "deepender",
  :database => "rain"})


  
  ActiveRecord::Schema.define(:version => 20110320035329) do

    create_table "graphs", :force => true do |t|
      t.string  "stock_name"
      t.integer  "price"
    end


end
class Graphs < ActiveRecord::Base
  attr_accessible :stock_name, :price
  end
  
  Graphs.create stock_name:k,price:67
    
	
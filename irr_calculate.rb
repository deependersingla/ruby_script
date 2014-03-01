require 'finance'
include Finance
trans = []
trans << Transaction.new( -250000, date: Time.new(2010,12,31) )
trans << Transaction.new( -25000, date: Time.new(2011,2,14) )
trans << Transaction.new( 10000, date: Time.new(2011,3,10) )
trans << Transaction.new( 285000, date: Time.new(2011,3,31) )
puts trans.xirr.apr.to_f.round(2)
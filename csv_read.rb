require 'csv'
stocks=[]
#csv = CSV.read('/home/deepender/Downloads/niveshi_sample.csv', :headers=>true)
 CSV.foreach('/home/deepender/Downloads/niveshi_sample.csv', headers:true) do |row|
      @stock=row.to_hash
      stocks.push(@stock)  
   end

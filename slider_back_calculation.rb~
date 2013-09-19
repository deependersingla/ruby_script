h=[{"folder"=>"nil", "weight"=>"40", "stocks"=>[{"id"=>"stock id1", "name"=>"Indian Oil Corporation Ltd.", "weight"=>"20"}, {"id"=>"stock id2", "name"=>"Power Finance Corporation Ltd.", "weight"=>"20"}]}, {"folder"=>"collect", "weight"=>"30", "stocks"=>[{"id"=>"stock id3", "name"=>"Atul Auto Ltd.", "weight"=>"10"}, {"id"=>"stock id4", "name"=>"Cairn India Ltd.", "weight"=>"20"}]}, {"folder"=>"cot", "weight"=>"30.0", "stocks"=>[{"id"=>"stock id5", "name"=>"Infosys Ltd.", "weight"=>"20"}, {"id"=>"stock id6", "name"=>"Bank of Baroda", "weight"=>"10"}]}]
def total_weight(portfolio)
  #print portfolio
  c=0.0
  for folder in portfolio
    #print folder["weight"]
    #print folder["weight"].to_f.class
    #d=folder["weight"].to_f
    c=folder["weight"].to_f+c
    #print c.class
  end
  
  return c
end

#the whole portfolio
#stock_name whose quantity is changed
#quantity=new quantity
#lock_folder is an array of folder whose value is locked

def slider_back_calculation(portfolio,stock_name,quantity,lock_folder)  
  new_lock_folder=Array.new
  for lock in lock_folder
     for folder in portfolio
       if(folder["folder"]==lock)
         new_lock_folder.push(folder)
         portfolio.delete(folder)
       end
     end
  end
  #print new_lock_folder
  #print "\n I am new_open_folder"
  #print portfolio
  for folder in portfolio
    for stock in folder["stocks"]
      if(stock["name"]==stock_name)
         changed_folder=folder
         break
         break
      end
   end
 end
 # updating folder and stock weight of changed_folder
 for stock in changed_folder["stocks"]
   if(stock["name"]==stock_name)
      old_weight=stock["weight"].to_f
      stock["weight"]=quantity.to_f
      change_in_weight=quantity-old_weight
   end    
 end
 changed_folder["weight"]="%.1f" % (change_in_weight+changed_folder["weight"].to_f) 
 new_lock_folder.push(changed_folder)
 portfolio.delete(changed_folder)
 #print portfolio
 
 #updating weight of other folder
 for folder in portfolio
   c=total_weight(portfolio)
   #print " value returned from fucntion total_weight \n"
   #print c
   d=folder["weight"].to_f
   e=(d)*(change_in_weight)/c
   folder["weight"]="%.1f" % (d-e)
   change_in_folder_weight=d-folder["weight"].to_f
   for stocks in folder["stocks"]
     #print " i am working till fine after stocks"
     stock_total_weight=total_weight(folder["stocks"])
     #print "stock_total_weight"
     j=(stocks["weight"].to_f)*(change_in_folder_weight)/stock_total_weight
     print j
     stocks["weight"]="%.1f" % (stocks["weight"].to_f-j)
   end
 end

  #print portfolio  
   

 #changed_folder,stock_name,quantity
 #print new_lock_folder 
 res=portfolio+new_lock_folder
 return res
 print "\n"
end

k=slider_back_calculation(h,"Cairn India Ltd.",30,[])
print k



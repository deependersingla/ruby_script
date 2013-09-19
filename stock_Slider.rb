h=[{"folder"=>"Expecting PE ratio", "weight"=>"11.1", "stocks"=>[{"id"=>"id6", "name"=>"Hindustan Zinc Ltd.", "weight"=>"11.1"}]}, {"folder"=>"High Risk", "weight"=>"69.8", "stocks"=>[{"id"=>"id5", "name"=>"Atul Auto Ltd.", "weight"=>"12.7"}, {"id"=>"id3", "name"=>"Indian Oil Corporation Ltd.", "weight"=>"14.4"}, {"id"=>"id7", "name"=>"Infosys Ltd.", "weight"=>"42.7"}]}, {"folder"=>"Low Margin", "weight"=>"6.1", "stocks"=>[{"id"=>"id9", "name"=>"Jindal Steel & Power Ltd.", "weight"=>"6.1"}]}, {"folder"=>"from kite", "weight"=>"13.0", "stocks"=>[{"id"=>"id8", "name"=>"Hindustan Unilever Ltd.", "weight"=>"13.0"}]}] 







def finding_the_concerned_id(j)
    d=j.split(" ")
    last_weight=d.last.split(",")
    port=Portfolio.last
    g=Portfolio.new
    portfolio=g.render(port)
    i=0
    for folder in portfolio
      folder["weight"]=last_weight[i]
      i=i+1
      for stock in folder
        stock["weight"]=last_weight[i]
        i=i+1
      end
    end
    d.pop
    j=Hash.new
    for i in d
      d[i+1]=d[i+1][3..-1]
      j[d[i+1]]=d[i]
      i++
    end
  print j
  end

#var will contain id of stocks of locked folder which need to be canceled
def slider_back_calculation(portfolio,id,qty,var)
  stock_folder=Array.new
  for folder in portfolio
    for stock in folder["stocks"]
      stock_folder.push(stock)
      #print stock
    end
  end
#print stock_folder
  lock_stock=Array.new
   for i in var
     for stock in stock_folder
       if(i==stock["id"])
         stock_folder.delete(stock)
         lock_stock.push(stock)
     end
   end
  end
 change_stock_qty(qty,stock_folder)  
  #print id
 update_stock_id(portfolio,id,qty,lock_stock)
  update_folder_weight(portfolio)
  
print lock_stock
print "\n"
print stock_folder,"\n\n"

print portfolio

end

def update_folder_weight(portfolio)
 for folder in portfolio
      folder["weight"]=0
   for stock in folder["stocks"]
     folder["weight"]=stock["weight"].to_f+folder["weight"]
   end
 end
end


def change_stock_qty(qty,stock_folder)
  weight=0
  for stock in stock_folder
    weight=weight+stock["weight"].to_f
  end
  #print weight
  for stock in stock_folder
    stock["weight"]="%.1f" %(stock["weight"].to_f-((stock["weight"].to_f * qty)/weight))
  end
end

def change_lock_qty(qty,stock_folder)
  weight=0
  for stock in stock_folder
    weight=weight+stock["weight"].to_f
  end
  #print weight
  for stock in stock_folder
    stock["weight"]="%.1f" %(stock["weight"].to_f+((stock["weight"].to_f * qty)/weight))
  end
end


def update_stock_id(portfolio,id,qty,lock_stock)
  #print "\n \n i am inside lock"
  #print id
  for folder in portfolio
    if(folder["folder"]==id)
      #d=folder["stocks"]
      stock=change_lock_qty(qty,folder["stocks"])
      return lock_stock
      print "i am here"
    end
  end
  for stock in lock_stock
    if(stock["id"]==id)
       stock["weight"]=stock["weight"].to_f+qty
       #print "\n i am here"
    end
    return lock_stock
  end       
end


finding_concerned_id()



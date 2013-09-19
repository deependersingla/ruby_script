k=[{"name"=>"Default", "stocks"=>[{"name"=>"Indian Oil Corporation Ltd.", "id"=>"id3", "qty"=>"10"}, {"name"=>"Power Finance Corporation Ltd.", "id"=>"id4", "qty"=>"15"}]}, {"name"=>"Test2", "stocks"=>[{"name"=>"Ltd.", "id"=>"id5", "qty"=>"10"}, {"name"=>"Corporation", "id"=>"id6", "qty"=>"15"}]}, {"name"=>"some", "stocks"=>[{"name"=>"Indian", "id"=>"id7", "qty"=>"10"}, {"name"=>"Power", "id"=>"id8", "qty"=>"15"}]}]
m="Default                  id7                 id5              id3                                    id4              Test2                  id8                  id6     some  "

new_m=m.split(" ")
stocks_array=Array.new
folder_array=Array.new
name_array=Array.new
k.each {|f|
  folder_array.push(f["name"])
  f["stocks"].each { |ss|
    stocks_array.push(ss)
  }
}
d=0
e=new_m
for i in 1..folder_array.length-1
  new_m.each{|n|
    if(n==folder_array[i])
      index=new_m.index(n)
      #print d
      array=new_m[d..index-1]
      name_array.push(array)
      #new_m=new_m-array
      #print new_m
      d=index
      e=e-array
      #print e
    end
  }
end
name_array.push(e)
folder=Array.new
for i in 0..name_array.length-1
  s=name_array[i]
  folder[i]=Hash.new
  folder[i]["name"]=s[0]
  folder[i]["stocks"]=Array.new
  for j in 1..s.length-1
    stocks_array.each {|k|
    #print s[j]
    if(k["id"]==s[j])
      folder[i]["stocks"].push(k)
    end
    }    
  end
end
print folder




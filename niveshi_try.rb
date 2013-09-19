def stock_folder_map
    res = {}
    folders.each { |ff|
      ff.stocks.each { |s|
        res[s["id"]] = ff["name"]
      }
    }
return res
#print res
  end

def format_with_folders(stocks)
    fmap = stock_folder_map
    res = stocks.group_by {|s| fmap[s["id"]] }.collect {|fname, ss|
      {
        "name" => fname,
        "stocks" => ss
      }
    }
    new(folders: res)
  end

Folder = Struct.new(:name, :stocks)

def folders
  [
    Folder.new(
      "Folder 1",
      [
        { "name" => "stock name", "id" => "stock id1", "qty" => 3 },
        { "name" => "stock name", "id" => "stock id2", "qty" => 5 }
      ]
    ),
    Folder.new(
      "Folder 2",
      [
        { "name" => "stock name", "id" => "stock id3", "qty" => 2 },
        { "name" => "stock name", "id" => "stock id4", "qty" => 1 }
      ]
    )
  ]
end


stocks = [
        { "name" => "stock name", "id" => "stock id1", "qty" => 2 },
        { "name" => "stock name", "id" => "stock id2", "qty" => 1 },
         { "name" => "stock name", "id" => "stock id3", "qty" => 2 },
        { "name" => "stock name", "id" => "stock id4", "qty" => 1 }
          ]

fmap=stock_folder_map
print fmap




#format_with_folders(folders[:stocks])




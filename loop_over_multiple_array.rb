k=[{"folder"=>"nil", "weight"=>"21.1", "stocks"=>[{"id"=>"stock id1", "name"=>"Indian Oil Corporation Ltd.", "weight"=>"11.6"}, {"id"=>"stock id2", "name"=>"Power Finance Corporation Ltd.", "weight"=>"9.6"}]}, {"folder"=>"collect", "weight"=>"32.8", "stocks"=>[{"id"=>"stock id3", "name"=>"Atul Auto Ltd.", "weight"=>"7.1"}, {"id"=>"stock id4", "name"=>"Cairn India Ltd.", "weight"=>"25.8"}]}, {"folder"=>"cot", "weight"=>"46.0", "stocks"=>[{"id"=>"stock id5", "name"=>"Infosys Ltd.", "weight"=>"33.3"}, {"id"=>"stock id6", "name"=>"Bank of Baroda", "weight"=>"12.7"}]}]

h=[{"folder"=>"nil", "weight"=>"21.1", "stocks"=>[{"id"=>"stock id1", "name"=>"Indian Oil Corporation Ltd.", "weight"=>"11.6"}, {"id"=>"stock id2", "name"=>"Power Finance Corporation Ltd.", "weight"=>"9.6"}]}, {"folder"=>"collect", "weight"=>"32.8", "stocks"=>[{"id"=>"stock id3", "name"=>"Atul Auto Ltd.", "weight"=>"7.1"}, {"id"=>"stock id4", "name"=>"Cairn India Ltd.", "weight"=>"25.8"}]}, {"folder"=>"cot", "weight"=>"46.0", "stocks"=>[{"id"=>"stock id5", "name"=>"Infosys Ltd.", "weight"=>"33.3"}, {"id"=>"stock id6", "name"=>"Bank of Baroda", "weight"=>"12.7"}]}]

h.zip(k).each do |@h, @k|
   puts @h
   puts @k
 end


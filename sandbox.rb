pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}


def pigeon_names(data)
#this method accepts the nds and returns a hash of unique pigeon names
#ex. "pigeon name" => {}

  pigeon_names = {}
  new_array = []
  attributes = []
  data.each do |top_key,top_value| #block
    attributes << top_key
    top_value.each do |key2, value2| #nested block
      value2.each do |value3|
        new_array << value3
    end
    end #nested block
  end # block
  new_array.uniq!
  new_array.map do |name|
    pigeon_names[name] = {:color => [], :gender => [], :lives => []}
  end #map block

  pigeon_names.each do |name,value|
    value.each do |k,v|
      p "name= #{name}, value = #{value} k = #{k}, v = #{v}"
      data[k].each do |subatt, name_list|
        p "subatt = #{subatt}, name_list= #{name_list}"
        if name_list.any?{name}
          v << subatt.to_s
        end #if
      end #data[k] block
    end #value.each block
  end #pigeon_names.each block
  pp pigeon_names      
 # end
  
  



  return pigeon_names
end

def add_attributes(birds)
  attributes = [:color, :gender, :lives]
  birds.each do |bird_name|
    p bird_name
    attributes.each do |attribute_value|
        p attribute_value
#      bird_name[attribute_value] = []
    end #attributes.each block
  end #birds.each block
  p birds
  return birds
end

def nyc_pigeon_organizer(data)
  pigeon_list = pigeon_names(data)
#  add_attributes(pigeon_list)
end



nyc_pigeon_organizer(pigeon_data)
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
  data.each do |top_key,top_value| #block
    top_value.each do |key2, value2| #nested block
      value2.each do |value3|
        new_array << value3
    end
    end #nested block
  end # block
  new_array.uniq!
  p new_array
  new_array.map do |name|
    pigeon_names[name] = {}
  end #map block
    p pigeon_names
  return pigeon_names
end

pigeon_names(pigeon_data)


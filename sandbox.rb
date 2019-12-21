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


def nyc_pigeon_organizer(data)
  pigeon_list = {}
  new_array = []
  data.each do |top_key,top_value| #block
#    p top_key, top_value
    top_value.each do |key2, value2| #nested block
      value2.each do |value3|
        new_array << value3
    end
#      p key2, value2
    end #nested block
  end # block
  new_array.uniq!
  p new_array
  return pigeon_list
end

nyc_pigeon_organizer(pigeon_data)
require 'pry'

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
  new_hash = {}
  data.each do |attribute_array|
    attribute_array[1].each do |k, v|
      v.each do |pigeon|
        if new_hash[pigeon]
          new_hash[pigeon][:color] << k.to_s
        else
          new_hash[pigeon] = {:color => [k.to_s]}
          new_hash[pigeon] = :gender
          new_hash[pigeon] = :lives
          binding.pry
        end
      end 
    end
  end
  new_hash
  binding.pry
end
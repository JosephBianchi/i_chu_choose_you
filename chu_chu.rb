train_arry = [
{train: "72C", frequency_in_minutes: 15, direction: "north"},
{train: "72D", frequency_in_minutes: 15, direction: "south"},
{train: "610", frequency_in_minutes: 5, direction: "north"},
{train: "611", frequency_in_minutes: 5, direction: "south"},
{train: "80A", frequency_in_minutes: 30, direction: "east"},
{train: "80B", frequency_in_minutes: 30, direction: "west"},
{train: "110", frequency_in_minutes: 15, direction: "north"},
{train: "111", frequency_in_minutes: 15, direction: "south"}
]

# method for below questions
# def train_stats(array, key1, key2, name)
#   value = 0
#   array.each { |train|
#     if train[key] == name
#       value = train[key2]
#     end
# }
# ^method didn't work :(

# 1. save direction of train 111 into a variable.
train_111 = 0
train_arry.each { |train|
    if train[:train] == "111"
      train_111 = train[:direction]
    end
}
p "the direction of train(111) is #{train_111}"

# 2. save the frequency of train 80B into a variable (using method *fingers crossed*)
# train_stats(train_arry, :train, :frequency_in_minutes, "80B")
# end
#
# p frequency_train_80B

# ^ method didn't work :(

train_freq_80B = 0
train_arry.each {|train|
  if train[:train] == "80B"
    train_freq_80B = train[:frequency_in_minutes]
  end
}
p "the freq of train(80B) is #{train_freq_80B} minutes"

# 3. Save the direction of train 610 into a variable.
train_dir_610 = 0
train_arry.each {|train|
  if train[:train] == "610"
    train_dir_610 = train[:direction]
  end
}
p "the dir of train(80B) is #{train_dir_610}"

# 4. Create an empty array. Iterate through each train and add the name of the train into the array if it travels north.
north_side_trains = []
train_arry.select {|train|
  if train[:direction] == "north"
    north_side_trains << train
  end
}
p north_side_trains

# 5. Do the same thing for trains that travel east.
east_side_trains = []
train_arry.select {|train|
  if train[:direction] == "east"
    east_side_trains << train
  end
}
p east_side_trains

# 6. You probably just ended up rewriting some of the same code. Move this repeated code into a method that accepts a direction and a list of trains as arguments, and returns a list of just the trains that go in that direction. Call this method once for north and once for east in order to DRY up your code.
def train_directions(train_arry, direction_value)
  dir_side_trains = []
  train_arry.select { |train|
    if train[:direction] == direction_value
      dir_side_trains << train
    end
  }
end

p train_directions(train_arry, "north")
p train_directions(train_arry, "east")

# 7. pick one train and add key/value pair for the first departure time
train_arry.each {|train|
  if train[:train] == "72C"
    train[:first_departure_time] = 6
  end
}
p train_arry

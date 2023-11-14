# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# -------------------1) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'

us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 

# Pseudo code:

def flatten_and_sort(hash)
    # attain values from the hash by using .values
    all_values = hash.values
  
    # flatten the nested arrays (.flatten => anything that is a copy gets joined as one array)
    flattened_values = all_values.flatten
  
    # sort the values alphabetically using .sort for alphabetical
    sorted_values = flattened_values.sort
  
    #return the final result
    return sorted_values
  end
  
  
  us_states = { northwest: ['Washington', 'Oregon', 'Idaho'],southwest: ['California', 'Arizona', 'Nevada'],northeast: ['Maine', 'New Hampshire', 'Rhode Island']
  }
  
  # Get result
  result = flatten_and_sort(us_states)
  
  # Print result
  p result
  
  # Output: => ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"]


# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:
  #Create a class called Bike
class Bike
  #Initialize it with model,wheels and speed with wheels =2
  def initialize(model, wheels = 2, current_speed = 0)
    @model = model
    @wheels = wheels
  #Current_speed should start with 0
    @current_speed = current_speed
  end
  #Create a bike_info method that returns a sentence with all the data from the bike object
  def bike_info
    "The #{@model} bike has #{@wheels} wheels that goes #{@current_speed} mph"
  end
end

test_bike = Bike.new("Sportster")
#print bike info sentence
puts test_bike.bike_info

# Output: => The Sportster bike has 2 wheels and is going at 0 mph

# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:

 #Create a class called Bike
 class Bike2
  #Initialize it with model,wheels and speed with wheels =2
  def initialize(model, wheels = 2, current_speed = 0)
    @model = model
    @wheels = wheels
  #Current_speed should start with 0
    @current_speed = current_speed
  end
  #Create a bike_info method that returns a sentence with all the data from the bike object
  def bike_info
    "The #{@model} bike has #{@wheels} wheels that goes #{@current_speed} mph"
  end

  def pedal_faster(speed)
    # Increase current_speed with "+= speed"
    @current_speed += speed
    #.max enables us to find the maximum value in an array so if theres a vlue greater than zero it will gibe us that value and if there is none it will give us the other value which is 0 in our case
    @current_speed = [@current_speed, 0].max
    @current_speed
  end

  def brake(slow)
    # Decrease current_speed with "-= speed"
    @current_speed -= slow
    @current_speed = [@current_speed, 0].max
    @current_speed
  end
end

pedal_bike = Bike2.new("mountain bike")

p pedal_bike.bike_info
#Output: => The mountain bike bike has 2 wheels that goes 0 mph

pedal_bike.pedal_faster(10)
p pedal_bike.bike_info
#Output: => "The mountain bike bike has 2 wheels that goes 10 mph"

p pedal_bike.pedal_faster(18) 
p pedal_bike.bike_info
#Output: => "The mountain bike bike has 2 wheels that goes 28 mph"

p pedal_bike.brake(5)
p pedal_bike.bike_info

p pedal_bike.brake(25)
p pedal_bike.bike_info
# Output: => "The mountain bike bike has 2 wheels that goes 0 mph" 
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
  


# --------------------2a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.

# Pseudo code:






# -------------------2b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0

# Pseudo code:


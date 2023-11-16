# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# Initialize hash in order to store the count of each type of taco 
#.reduce takes in an array and reduces it to a single value 
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
# Convert the taco type to lowercase and increment its count in the hash
  result[vote.downcase] += 1
# Return the updated hash
  result
end
#print the total
p totals
# Output: => {"fish taco"=>9, "california burrito"=>4, "tacos al pastor"=>3, "carnitas tacos"=>4, "tacos de barbacoa"=>2} 



#Revese Engineered Prompt
# My apologies if this is wroing I'm uncertain if this is what was meant by the question
animes = ['One Piece', 'One Piece: Clockwork Island', 'One Piece', 'One Piece: Stampede', 'One Piece: Gold', 'One Piece: Z', 'One Piece', 'One Piece: Strong World', 'One Piece: Clockwork Island', 'One Piece: Stampede', 'One Piece: Gold', 'One Piece: Z']

totals = animes.reduce(Hash.new(0)) do |result, vote|

  result[vote.downcase] += 1

  result

end
p totals

#Output: {"one piece"=>3, "one piece: clockwork island"=>2, "one piece: stampede"=>2, "one piece: gold"=>2, "one piece: z"=>2, "one piece: strong world"=>1} 
require 'pry'

numbers = [1, 2, 3, 4, 5]

#return a new array of each number * 2 

def numbers_times_two numbers 
  #numbers times two being called on variable numbers
  numbers.map { |number| number * 2 }
end 
# use underscores for method definitions
#.map transforms an array 
#in this case it takes each number and allows it to be multiplied by 2

#return a new array of only numbers less than 3 
def less_than_three numbers 
  numbers.filter do |number| 
    number < 3
  end 
end

dogs = [
  {name: "fluffy", age: 3},
  {name: "floofy", age: 5},
  {name: "beeko", age: 8}
]

#avg age of all dogs, with reduce 
def dogs_avg_age dogs
  total_dogs = dogs.reduce(1) do |sum, dog|
    sum + dog[:age]
  end 
  (total_dogs.to_f / dogs.length).round(0)
  #only one number needs to be float, and ruby will do float math for whole thing 
  #added .round(0) so float will be a whole number 
end

#build new hash, dogs name as key, 
#their age as value 
#{fluffy: 3, floofy: 5, beeko: 8}
def name_with_age_hash dogs
  #trying to return a new hash, so initial value of reduce will be empty hash 
  dogs.reduce({}) do |names_with_age, dog|
    names_with_age[dog[:name]] = dog[:age]
    names_with_age
  end 
end

#return the youngest dog 
def oldest_dog dogs 
  dogs.max_by { |dog| dog[:age] }
end 

#return the youngest dog
def youngest_dog dogs 
  dogs.min_by { |dog| dog[:age]}
end 

binding.pry
0
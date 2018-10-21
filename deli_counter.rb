# Write your code here.

def line(katz_deli)
  if katz_deli.empty? 
    puts "The line is currently empty."
  else
    statement = "The line is currently:"
    katz_deli.each_with_index do |person, index|
      # Using the shovel method to concat strings in "statement" variable: 
      statement << " #{index + 1}. #{person}"
    end
    puts statement
  end
end

def take_a_number(katz_deli, new_person)
  katz_deli.push(new_person)
  line_size = katz_deli.size
  puts "Welcome, #{new_person}. You are number #{line_size} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts "There is nobody waiting to be served!"
  else
    person_being_served = katz_deli.shift
    puts "Currently serving #{person_being_served}."
  end
end
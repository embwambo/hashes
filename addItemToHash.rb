subjectsAndRatings = {
  biology: 5,
  chemistry: 4,
  physics: 3
}

puts "This is your subject collection: #{subjectsAndRatings}"

puts

answer = "yes"

while answer == "yes"
  puts "Would you like to add another subject ?"
  answer = gets.chomp
  case answer
  when "yes"
    puts "Please enter subject"
    subject = gets.chomp
    subjectsAndRatings[subject.to_sym]
    
    puts "which rating would you like to give ? "
    rating = gets.chomp
    subjectsAndRatings[subject.to_sym] = rating.to_i
    
    puts "Subject #{subject} with rating of #{rating.to_i} has been added successfully"
    
  when "no"
    puts "This sound good to me. Your subject collection is..."
  end
end
puts "This is your subject collection: #{subjectsAndRatings}"

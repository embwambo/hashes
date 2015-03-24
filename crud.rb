subjects = {
  physics: 1,
  chemistry: 2,
  biology: 3
}

puts "What operation would you like to perform? (add), (update), (delete) or (list) "

operation = gets.chomp

case operation
  when "add"
    puts "Which subject would you like to add ?"
    title = gets.chomp
    if subjects[title.to_sym] .nil?
      puts "Which rating would you like to give? "
      rating = gets.chomp
      subjects[title.to_sym] = rating.to_i
      puts "New subject with title '#{title}' and rating of '#{rating}' has been added successfully"
    
    else 
      puts "The subject is already in your has! :("
    end
    
  when "update"
    puts "Which subject would you like to update its rating ?"
    title = gets.chomp
    if subjects[title.to_sym] .nil?
      puts "The subject you want to update doesn't exist"
    else
      puts "Which rating would you like to give ?"
      rating = gets.chomp
      subjects[title.to_sym] = rating.to_i
      puts "Your rating for #{title} has been updated to #{rating}"
    end
    
   when "delete"
     puts "Which subject would you like to delete ?"
     title = gets.chomp.to_sym
     if subjects[title.to_sym] .nil?
       puts "The subject you want to delete doesn't exist" 
       
     else
       subjects.delete(title)
       puts "subject has been removed successfully"
     end
     
     when "list"
       subjects.each do |subjectTitle,subjectRating| 
        puts "#{subjectTitle} : #{subjectRating}"  
       end 
       
     else
       puts "You have specified wrong operation"
end

puts "New subject collection is #{subjects}"

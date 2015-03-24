=begin

customerDetails = {
  name: "Emmanuel Mbwambo",
  mobile: "+255 717 004 282",
  email: "emmanuelmbwambo@gmail.com",
  work: "Web Master",
  employer: "Tanzania Airports Authority"
}

customerDetails.each do |k,v|
puts "#{k} \t \t #{v}"
end

puts

customerDetails.each_value do |v|
  puts v
end
puts

customerDetails.each_key do |v|
  puts v
end

=end

yearOfBirth = {
  neema: 1993,
  stanley: 1984,
  ernest: 1989,
  emmanuel: 1986
}
olderEnough = yearOfBirth.select {|k,v| v > 1985}
puts olderEnough
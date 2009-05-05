require 'tilfeldige.rb' #makes an array of unique sorted random numbers  
require 'valtall.rb' #validates that our input is a number of wanted size

puts
puts 'This program is a lottery simulator that takes your favorite'
puts 'numbers and runs them up to a random series of numbers.'
puts 'you wins when your computer has managed to mach your numbers'
puts 'with it\'s own randomly generated numbers.'
puts 'warning: it may take some time to do this so be patient.'
puts
inputarray = []

counter = 0
while counter < 7
  counter += 1
  puts 'Enter a number'
  while true
    valunik = valtall
    if inputarray.all? {|arrnum| arrnum != valunik} 
      inputarray.push valunik
      break
    else
      puts 'The number must be unique'
    end
  end
end 
puts 'Thank you'
puts 'Your numbers are: '+inputarray.join(', ')
puts 'processing numbers, please wait.'  
weeks = 0
seksrett = 0
while true
  weeks += 1
  if (inputarray.sort & tilfarr).length == 7
    puts "You won after "+weeks.to_s+" weeks!"
    puts "And you had six numbers "+seksrett.to_s+" times"
    break
  else 
    if (inputarray.sort & tilfarr).length == 6
      seksrett += 1
    end
  end
end

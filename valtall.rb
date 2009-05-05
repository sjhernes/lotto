def valtall #check that number is between 0 and 16
  while true
    num = gets.to_i #make sure input's an integer
    if num > 0 && num < 16
      break
    else
    puts 'enter a number between 1 and 15'
    end
  end
  num
end

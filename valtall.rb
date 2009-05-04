def valtall #valider at input er et tall mellom 0 og 16
  while true
    tall = gets.to_i
    if tall > 0 && tall < 16
      break
    else
    puts 'tast inn et tall mellom 1 og 15'
    end
  end
  tall
end

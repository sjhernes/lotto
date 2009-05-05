puts
puts 'dette programmet er en lottosimulator der du taster inn'
puts 'lottorekka di og programmet trekker tall helt til du vinner'
puts 'ved sju rette og sier til deg hvor mange uker det tok før du'
puts 'vant. Programmet kan ta litt tid å kjøre og bruker mye cpu'
puts 'og kan dermed brukes som stabilitetstest for datamaskiner.'
puts
inputarray = []

teller = 0
while teller < 7
  teller += 1
  puts 'tast inn et tall'
  while true
    require 'valtall.rb'
    valunik = valtall
    if inputarray.all? {|arrnum| arrnum != valunik} 
      inputarray.push valunik
      break
    else
      puts 'tall må være unikt'
    end
  end
end 
puts "takk"
puts "lottorekka di er: "+inputarray.join(', ')  
uker = 0
seksrett = 0
while true
  uker += 1
  load 'tilfeldige.rb'
  if (inputarray.sort & tilfarr).length == 7
    puts "du vant etter "+uker.to_s+" uker!"
    puts "og du hadde seks rette "+seksrett.to_s+" ganger"
    break
  else 
    if (inputarray.sort & tilfarr).length == 6
      seksrett += 1
    end
  end
end

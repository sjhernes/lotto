def tilfarr
  arr  = (1..15).to_a
  array = []
  teller = 0
  while teller < 7
    teller += 1
    while true
      tilfeldig = rand(15)
      if arr[tilfeldig] != nil 
        array.push arr[tilfeldig]
        arr[tilfeldig] = nil
        break
      end
    end
  end
  array.sort
end

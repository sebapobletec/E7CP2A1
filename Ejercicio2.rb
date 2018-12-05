nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

b = nombres.select { |e| e.length >5 }
print b
puts ''

min = nombres.map { |e| e.downcase }
print min
puts ''

withp = nombres.select { |e| e[0] == 'P' }
print withp
puts ''


length = nombres.map { |e| e.length  }
print length
puts ''

withoutv = nombres.map { |e| e.gsub(/[aeiou]/,'') }
print withoutv
puts ''

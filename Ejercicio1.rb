 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

e1 = a.map{ |n| n += 1 }
print e1
puts ''

e2 = a.map { |n| n.to_f }
print e2
puts ''

e3 = a.map { |e| e.to_s }
print e3
puts ''

e4 = a.reject { |e| e<5  }
print e4
puts ''

e5 = a.select{ |e| e<=5 }
print e5
puts ''

e6 = a.inject(0){|sum,x| sum + x}
print e6
puts ''

e7 = a.group_by{|e| e%2==0}
print e7
puts ''

e8 = a.group_by{|e| e>6}
print e8
puts ''

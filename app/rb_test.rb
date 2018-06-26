# テスト実行用のrubyファイル
def string_shuffle(s)
   s.split("").shuffle.join()
end
# puts string_shuffle("foobar")

class Test 
  @hoge = "hoge"
  def hoge
    puts @hoge
  end
end

class Cat
  def initialize(name, color)
    @name = name; @color = color
  end
end

# t = Cat.new("g","a")
# t = Test.new()
# p t.inspect

# h = { one: "uno", two: "dos", three: "tres"}
# h.each do |key, value|
#   puts "Key #{key}, value #{value}"
# end
person1 = {:first => "1-val-f", :last => "1-val-l" }
person2 = {:first => "2-val-f", :last => "2-val-l" }
person3 = {:first => "3-val-f", :last => "3-val-l" }
params = {:fahter => person1, :mother => person2, :child => person3}

# puts params[:fahter][:first] == person1[:first]
# puts ('a'..'z').to_a[0..1]

r = Range.new(1,10)
i = 1..11
puts i == r
```ruby
class MyClass
  attr_reader :value #Explicitly define a getter only method

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

#Attempting to assign will raise an error, since it's now read-only.
begin
  my_object.value = 20
rescue NoMethodError => e
  puts "Error: #{e.message}"
end
```
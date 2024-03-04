# Meta programing concept
class A
  ["method_1", "method_2", "method_3"].each do |method_name|
    define_method method_name do
      puts "My method name is #{method_name}"
    end
  end

  def method_missing(method_name, *args, &block)
    puts "No Method Error: #{method_name}"
  end
end

obj = A.new

obje.method_1
obje.method_2
obje.method_3
obj.method_4

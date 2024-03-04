# We can define instance method inside the class method

class A
  def instance_method
    self.class.class_eval do
      def self.class_name
        puts "This is a class method"
      end
    end
  end
end

A.class_name
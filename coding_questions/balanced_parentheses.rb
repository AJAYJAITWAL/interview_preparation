class BalancedParentheses
  def self.check(expression)
    stack = []

    expression.chars.each do |char|
      case char
      when '(', '[', '{'
        stack.push(char)
      when ')'
        return false if stack.empty? || stack.pop != '('
      when ']'
        return false if stack.empty? || stack.pop != '['
      when '}'
        return false if stack.empty? || stack.pop != '{'
      end
    end

    stack.empty?
  end
end

# Example usage:
puts BalancedParentheses.check("([])")  # Output: true
puts BalancedParentheses.check("([)]")  # Output: false

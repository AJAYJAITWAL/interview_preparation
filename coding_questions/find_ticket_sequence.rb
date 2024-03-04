
# You are given a list of flight tickets represented as pairs of departure and arrival airports. Each ticket is represented as a two-element array [from, to], where from is the departure airport and to is the arrival airport. Write a function that takes these tickets as input and returns the itinerary that uses all the tickets once and only once. The itinerary must begin with the airport 'JFK'.
# Note:
# All tickets must be used exactly once.
# If multiple itineraries are possible, return the itinerary that has the smallest lexical order when read as a single string. 

# For example, the itinerary ['JFK', 'LGA'] has a smaller lexical order than ['JFK', 'LGB'].
# It is guaranteed that a valid itinerary exists.

# Example:

# Input: tickets = [["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]]
# Output:["JFK", "MUC", "LHR", "SFO", "SJC"]

def tickets_sequence(tickets)
  graph = Hash.new { |h, k| h[k] = [] }
  
  tickets.each { |from, to| graph[from] << to }

  sequence = []

  current = graph.keys.min

  while graph.key?(current)
    sequence << current
    current = graph[current].shift
  end

  sequence
end

tickets = [["MUC", "LHR"], ["JFK", "MUC"], ["SFO", "SJC"], ["LHR", "SFO"]]

puts tickets_sequence(tickets).inspect

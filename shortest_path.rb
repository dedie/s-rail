#!/usr/bin/env ruby
require 'matrix'
# Use Dijkstra's algorithm to calculate shotest distance between two
# train stations

# Example matrix data for graph, should get a solution for shortest distance
# between 1 and 5 as 1,2,3,6,5 and a distance of 20
station_map = Matrix[[0,7,9,0,0,14],[7,0,10,15,0,0],[9,10,0,11,0,2],[0,15,11,0,6,0],[0,0,0,6,0,9],[14,0,2,0,9,0]]

tentative_distance = Array.new(station_map.row_count,1.0/0) # set all tentative distances to infinity
unvisited_set = Array.new(station_map.row_count,1) # set all unvisited nodes to 1
first_station = 1 # To make the program more useful we could pass these to the program
last_station = 5  # but we will set them to 1 and 5 for testing
tentative_distance[first_station] = 0 # First staion will always be 0
current_station = first_station
current_station_vector = station_map.row(current_station-1)

# first run just assign tenative and assigned distances so we have something to work with
# on the later passes
station_map.row(current_station).each_with_index do |item, index|
    if item != 0
        tentative_distance[index] =  item
    end
end
# Create the assigned distances array so we have something to compare the tenative
# distances to, in future iterations the tenative distances get copied to the assigned
# distances if they are smaller
assigned_distance = tentative_distance

# now keep going until there are no unvisited staions
while unvisited_set[current_station] == 1 do
    station_map.row(current_station).each_with_index do |item, index|
        if item != 0
            tentative_distance[index] = tentative_distance[index] + item
            # more work to do, need to sleep on this....
            # 
        end
    end
end
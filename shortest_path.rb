#!/usr/bin/env ruby
require matrix
# Use Dijkstra's algorithm to calculate shotest distance between two
# train stations

# Example matrix data for graph, should get a solution for shortest distance
# between 1 and 5 as 1,2,3,6,5 and a distance of 20
station_map = matrix[[0,7,9,0,0,14],[7,0,10,15,0,0],[9,10,0,11,0,2],[0,15,11,0,6,0],[0,0,0,6,0,9],[14,0,2,0,9,0]]


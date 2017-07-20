#!/usr/bin/env ruby

# Need to install nokogiri
# ruby > 2.2
require 'nokogiri'

doc = Nokogiri::XML(File.open("AB356.xml"))

# extract the CRS values and make them an array of strings
crs = (doc.css("PostcodeStationList Crs")).to_a
crs.map! do |item|
    item.to_s.slice(5,3)
end

# # extract the distance values and make them an array of float
distance = (doc.css("PostcodeStationList Distance")).to_a
distance.map! do |item|
    # can't use slice like previous here as the first part of the string
    # is this: <Distance units="miles
    # if the distance units change then the code will break so we will split
    # the string and pop off the first part, to_f will convert to a float
    # and remove the remaining alphas
    item.to_s.split('">').pop.to_f 
end

# create a hash
# I find hash's are nice for reuse of the code, now we can actual use station/distance
# keys/value pairs for other things. Would probably have been easier to search and extract
# distances, find the third smallest and then do a search to find the resulting station
# but it would not be as useful for other tasks.
crs_distance = crs.zip(distance).to_h

# The distance sorted lowest to highest so we can easily find the third closest
sorted_distance = distance.sort

crs_distance.each do |key, value|
    if value==sorted_distance[2] #the third closest station
        print("the third closest station is: ")
        puts(key)
    end
end

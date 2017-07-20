# Need to install nokogiri
# ruby > 2.2
require 'nokogiri'

Before do
    doc = Nokogiri::XML(File.open("request.xml"))
    # Find out how to do a RESTful request to the test server using the connection
    # details in request.xml to get the response then save the response to a file
    # response.xml
end

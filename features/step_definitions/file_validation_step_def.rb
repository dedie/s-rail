When(/^an XML file is available$/) do
  pending # Ruby code to load the XML file
end

When(/^the file is parsed$/) do
  pending 
  # How to turn Nokogiri into a Markup Nazi
  #
  # http://www.nokogiri.org/tutorials/ensuring_well_formed_markup.html
  #
  # begin
  # bad_doc = Nokogiri::XML(badly_formed) { |config| config.strict }
  # rescue Nokogiri::XML::SyntaxError => e
  # puts "caught exception: #{e}"
  # end
end

Then(/^the file will be of a valid format$/) do
  pending # Test for exception
end
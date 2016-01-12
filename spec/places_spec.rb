require('rspec')
require('places')
require('pry')

describe("#location") do
  it("will return location") do
    test_location = Place.new("Portland")
    expect(test_location.location).to(eq("Portland"))
  end
end

require('rspec')
require('places')
require('pry')

describe("#location") do
  it("will save to class variable") do
    Place.clear
    test_location = Place.new("Salem")
    test_location.save
    expect(Place.all).to(eq([test_location]))
    Place.clear
  end

  it("will return location") do
    test_location = Place.new("Portland")
    expect(test_location.location).to(eq("Portland"))
  end

  it("will clear class variable") do
    test_location = Place.new("Salem")
    test_location.save
    Place.clear
    expect(Place.all).to(eq([]))
  end
end

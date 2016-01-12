class Place
  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    return @location
  end

end

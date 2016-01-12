class Place
  @@all_places = []
  define_method(:initialize) do |location|
    @location = location
  end

  define_method(:location) do
    return @location
  end

  define_method(:save) do
    @@all_places.push(self)
  end

  define_singleton_method(:all) do
    return @@all_places
  end

  define_singleton_method(:clear) do
    @@all_places = []
  end

end

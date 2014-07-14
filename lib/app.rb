
class Parks

  def index_by_id(array_of_parks)
    @list = {}
    array_of_parks.each do |hash|
      @list[hash[:id]] = {:id => hash[:id], :name => hash[:name], :city => hash[:city], :state => hash[:state], :country => hash[:country]  }
    end
    @list
  end

  def index_by_country(array_of_parks)
      countries = []
    array_of_parks.each do |hash|
      countries << hash[:country]
    end
    array_of_countries = countries.uniq

      @list = {}
    array_of_countries.each do |country|
      # country_parks = []
      # array_of_parks.each do |hash|
      #   country_parks << hash if hash[:country] == country
      # end

      country_parks = array_of_parks.select { |park| park[:country] == country }
      @list[country] = country_parks
    end
    @list
  end
end

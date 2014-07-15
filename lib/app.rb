
class Parks
  def initialize(array_of_parks)
    @array_of_parks = array_of_parks
  end

  def index_by_id
    @list = {}
    @array_of_parks.each do |hash|
      #@list[hash[:id]] = {:id => hash[:id], :name => hash[:name], :city => hash[:city], :state => hash[:state], :country => hash[:country]  }
      #@list.store(hash[:id], hash)
      @list[hash[:id]] = hash
    end
    @list
  end

  def index_by_country
    countries = []
    @array_of_parks.each { |hash| countries << hash[:country] }
    array_of_countries = countries.uniq

    @list = {}
    array_of_countries.each do |country|
      country_parks = @array_of_parks.select { |park| park[:country] == country }
      @list[country] = country_parks
    end
    @list
  end
end


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
    array_of_countries = countries.uniq.sort

      @list = {}
    array_of_countries.each do |country|
      #cycle through the array of parks
      #if the selected parks country = "country"
        #add it to the countries grouping
      #else
        #skip it.do

    end
  end
end


=begin

{
  "Canada" => [
    {
      :id=>2,
      :name=>"Calaway Park",
      :city=>"Calgary",
      :state=>"Alberta",
      :country=>"Canada"
    }
  ],
  "United States" => [
    {
      :id=>546,
      :name=>"Kalahari Resorts",
      :city=>"Wisconsin Dells",
      :state=>"Wisconsin",
      :country=>"United States"
    },
    {
      :id=>547,
      :name=>"Little Amerricka",
      :city=>"Marshall",
      :state=>"Wisconsin",
      :country=>"United States"
    }
  ]
}
=end
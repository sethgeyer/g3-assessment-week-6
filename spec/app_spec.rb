require 'rspec'
require 'rspec/autorun'


describe 'Dog Hash' do
  describe "#index_by_id" do
    it "returns a hash of hashes" do
      array_of_parks = [
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
      park = Parks.new
      list = park.index_by_id(array_of_parks)
      expect(list[546][:id]).to eq(546)
      expect(list[547]).to eq(array_of_parks[1])
    end
  end



  describe "#index_by_country" do
    it "returns a hash of hashes organized by country" do
      array_of_parks = [
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
        },
        {
          :id=>2,
          :name=>"Calaway Park",
          :city=>"Calgary",
          :state=>"Alberta",
          :country=>"Canada"
        }
      ]
      park = Parks.new
      list = park.index_by_country(array_of_parks)
      expect(list["Canada"].size).to eq(1)
      expect(list["United States"].size).to eq(2)
    end
  end
end
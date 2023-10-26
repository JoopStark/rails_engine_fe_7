class MerchantsShow
  attr_reader :name, :id, :items
  
  def initialize(data)
    @id = data[:data][:id]
    @name = data[:data][:attributes][:name]
    @items = data[:included] 
  end
end
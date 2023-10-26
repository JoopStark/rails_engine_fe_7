class EnginesFacade
  # def initialize(id = nil)
  #   @id = id
  # end

  def items_index
    data = EngineService.new.items_index[:data]
    data.map do |item_data|
      Item.new(item_data)
    end
  end

  def items_show(id)
    Item.new(
      EngineService.new
                   .items_show(id)
      )
  end

  def merchants_show(id)
    MerchantsShow.new(
      EngineService.new
                   .merchants_show(id)
      )
  end

  def merchants_index
    data = EngineService.new
                        .merchants_index[:data]
    data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
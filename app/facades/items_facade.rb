class ItemsFacade
  def initialize(id = nil)
    @id = id
  end

  def items_index
    data = EngineService.new.items_index[:data]
    data.map do |item_data|
      Item.new(item_data)
    end
  end

  def items_show
    Item.new(
      EngineService.new
               .items_show(@id)
      )
  end

  def merchant
    data = EngineService.new
                    .merchants
    data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
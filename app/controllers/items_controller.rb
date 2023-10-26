class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.new.items_index
  end

  def show
    @item = ItemsFacade.new.items_show(param(:id))
  end
end
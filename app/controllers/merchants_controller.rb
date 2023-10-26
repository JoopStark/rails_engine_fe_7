class MerchantsController < ApplicationController
  def index
    @merchants = EnginesFacade.new.merchants_index
  end

  def show
    @merchant = EnginesFacade.new
                             .merchants_show(params[:id])
  end
end
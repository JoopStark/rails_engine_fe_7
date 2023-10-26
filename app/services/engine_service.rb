class EngineService < ApplicationService
  def conn
    Faraday.new(url: 'http://localhost:3000') 
  end

  def items_index
    json_parse(get_url('/api/v1/items'))
  end

  def items_show(id)
    json_parse(get_url("/api/v1/items/#{id}"))
  end

  def merchants_index
    json_parse(get_url('/api/v1/merchants'))
  end

  def merchants_show(id)
    json_parse(get_url("/api/v1/merchants/#{id}"))
    # json_parse(conn.get("/api/v1/merchants/#{id}"))
  end
end
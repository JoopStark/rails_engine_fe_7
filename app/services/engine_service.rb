class EngineService < ApplicationService
  def conn
    Faraday.new(url: 'http://localhost:3000') 
  end

  def get_url(url)
    conn.get(url)
  end

  def items_index
    json_parse(get_url('/api/v1/items'))
  end

  def items_show(id)
    json_parse(get_url("/api/v1/items/#{id}"))
  end
end
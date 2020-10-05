class Products

  include HTTParty

  base_uri "http://52.191.254.38/"
  format :json
  headers 'Token' => 'desafio'
  attr_reader :payload

  def initialize(payload = {})
    @payload = payload
  end

  def get_products
    self.class.get("/desafio/produtos")
  end

end


When(/^open the product to add "([^"]*)" products on Cart$/) do |quantity|
  @search = SearchPage.new
  @product = ProductPage.new
  @search.open_product
  productPrice = @product.get_product_price
  @totalPrice = productPrice * quantity.to_i
  @productName = @product.get_product_name
  @product.set_product_go_cart(quantity)
end
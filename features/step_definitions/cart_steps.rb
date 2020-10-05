
Then(/^I validate product on cart and the value$/) do
  @cart = CartPage.new
  @cart.validate_product_price(@productName, @totalPrice)
end

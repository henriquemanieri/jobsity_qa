#encoding: utf-8
#language: en


Feature: Cart
	As a custumer 
	I want to add product on the cart

	@add_product_cart
	Scenario: Add on cart and validate
		Given I'm on home page
		When I search a product 
		And open the product to add "3" products on Cart
		Then I validate product on cart and the value



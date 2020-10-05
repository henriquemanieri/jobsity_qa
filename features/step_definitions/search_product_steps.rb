When(/^I search a product$/) do
  @search = SearchPage.new
  @search.search_product
end



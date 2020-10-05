class SearchPage < SitePrism::Page

  element :searchField, "#search_query_top"
  element :searchButton, "[name='submit_search']"
  element :sideProduct, "[src='http://automationpractice.com/img/p/7/7-small_default.jpg']"


  def search_product
    searchField.click
    searchField.set('blouse')
    searchButton.click
  end

  def open_product
    sideProduct.click
  end

end

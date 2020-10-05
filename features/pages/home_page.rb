class HomePage < SitePrism::Page

  set_url "http://automationpractice.com/index.php"

  element :headerLogo, "#header_logo"
  element :contactUsLink, "#contact-link"
  element :logInLink, "[title='Log in to your customer account']"


  def home_page_confirmation
    find("#header_logo").visible?
  end

  def access_contact_page
    contactUsLink.click
  end
  
  def access_login_page
    logInLink.click
  end
end

When(/^fill the form$/) do
    @contact = ContactUsPage.new
    @contact.fill_form
end

Then(/^I get the feedback message$/) do
   @contact.confirm_success_message
end
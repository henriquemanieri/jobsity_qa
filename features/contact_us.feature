#encoding: utf-8
#language: en


Feature: Contact Us
	As a custumer 
	I want send a message to the support team

	@contact_us
	Scenario: Add on cart and validate
		Given I'm on home page
		When I access contact us feature
		And fill the form 
		Then I get the feedback message
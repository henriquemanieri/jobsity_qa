# QA Challenge

This challenge has three parts, the test cases on Google spreadsheet, the details and steps of the bugs on Trello, and also an automated test, using selenium and ruby.

## Manual tests
The test case spreadsheet obtain all the tests that I executed on the system divided by 2 system, that is the Zero Bank Test Case and the E-Commerce Test Case. Both of the spreadsheet has a collum "Trello Card" that has a link of the detailed bug on trello. 
Only Test cases with bugs have a link on this collum.

## Automated tests
The automated test includes just the E-Commerce system, as the challenge asks.
The automation was build using Ruby, Selenium Webdriver, Chromedriver, Rspec, Cucumber, and Site Prism.
I used this stack becouse is the fastest way to develop an automated test with my expertise

# Installation Process

## Requirements and installation

1. install ``` Ruby LTS ``` -> https://www.ruby-lang.org/en/downloads/

2. Download and install Google Chrome

3. Download and Install ``` Chromedriver LTS ``` -> https://chromedriver.storage.googleapis.com/index.html?path=86.0.4240.22/

4. Clone the project

5. Inside the project folder run ``` gem install bundler ```

6. Inside the project folder run ``` bundle install ```

Now the project is setted


## Starting

Inside the project folder, you can run the command ``` cucumber ``` that will run all the automated scenarios.

If you want to run specifics scenarios you can run:

```

cucumber -t @add_product_cart

cucumber -t @contact_us

cucumber -t @login

```

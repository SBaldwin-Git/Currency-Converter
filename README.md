# FreeAgent Coding Challenge

Thank you for your interest in the FreeAgent Coding Challenge.  This template is a barebones guide to get you started.  Please add any gems, folders, files, tests, etc. you see fit in order to produce a solution you're proud of.

## Coding Challenge Instructions

Please see the INSTRUCTIONS.md file for more information.

## Your Solution Setup and Run Instructions

1. Install gems:

```
bundle install
```

2. Run tests:

```
bundle exec rspec
```

3. Start a console session & load the template library:

```
bundle exec irb -I lib -r ./lib/currency_exchange.rb
```

4. Calculate an exchange rate:

Given the application currently only supports a JSON file converting from EUR to other currencies, the following examples can be used:
The first will return an error as converting from USD to GBP is not supported yet.
```
CurrencyExchange.rate(Date.new(2018, 11, 22), "USD", "GBP")
```
CurrencyExchange.rate(Date.new(2018, 12, 11), "EUR", "USD")

## Your Approach and Preparation

- As i had not coded in Ruby before, i had to learn the basics of Ruby and then implement the solution. This started with understanding the differences between Ruby and other languages i had worked with before, which is mostly JavaSript.
- Familiarised myself with FreeAgents values at https://engineering.freeagent.com/2018/11/30/writing-code-at-freeagent/.
- I decided to take my time with the test and treat it equally as a learning opportunity as well as a test of my skills.
- Object orietated design
- TDD
- Functional programming
- Maintainable code

## Test-Driven Development

1. Write a failing test
2. Create UML class diagram
3. Write the minimum amount of code to pass the test
4. Refactor the code
5. Repeat

## Your Design Decisions

- From reading the company values, there was an emphasis on functional and and well tested code. I decided to use a functional approach to the solution and also use TDD to ensure the code was well tested.
- Styled the code to be as readable as possible e.g use Prettier. (Update: Found Prettier does not support Ruby and will use Rufo instead)
- Use RSpec for testing as it is a popular testing framework in the Ruby community and is consdidered more readable than Test::Unit. RSpec also resembles the structure of Jest which i am familiar with.
- Single Responsibility Principle

## Learning Outcomes

- I learned the basics of Ruby and how to write a simple program in Ruby.
- I learned how to use RSpec for testing in Ruby.
- Further practised TDD and OOP.
- Single Responsibility Principle.
- Prettier does not support Ruby and will use Rufo instead.

## Future Improvements
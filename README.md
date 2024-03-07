# Currency Converter

## Your Approach and Preparation

- As i had not coded in Ruby before, i had to learn the basics of Ruby and then implement this solution. This started with understanding the differences between Ruby and other languages i had worked with before, which is mostly JavaSript.
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
- Single Responsibility Principle (One class for data retrieval, one for data manipulation and one for data presentation).
- Active learning.
- Use of UML class diagrams to plan the classes and their methods.
- All non euro currencies will need to be cross referenced with the euro currency to get the exchange rate. This is because the JSON file only contains the exchange rate from EUR to other currencies.
- The JSON file is only read once.


## Learning Outcomes

- I learned the basics of Ruby and how to write a simple program in Ruby.
- I learned how to use RSpec for testing in Ruby.
- Further practised TDD and OOP.
- Single Responsibility Principle.
- Prettier does not support Ruby and will use Rufo instead.
- UML class diagrams.
- Active learning and problem solving.


## Future Improvements

- Even more testing and planning PER class. Continue to use TDD and learn it, as it is a skill i want to improve.
- Define the number of the currency to convert from and to.
- More research into UML class diagrams.
- More personal breaks.
- Rely more on prewritten tests than console logs.
- Ask task requirements earlier into the task, and brainstorm earlier to find the best solution and potential problems.
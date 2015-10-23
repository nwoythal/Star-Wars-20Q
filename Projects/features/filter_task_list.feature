Feature: As a User I want the computer to guess what I am thinking.

  As a User
  I want to think of a StarWars object
  So that the computer can guess what I am thinking

Background: tasks have been added to database

  Given the following tasks exist:
  | what_am_i | answer_or_question | node_number |
  | Question  | Are you a Person?  | 1           |
  | Answer    | Obi Wan            | 2           |
  | Answer    | X-Wing             | 3           |

  And  I am on the Welcome home page

Scenario: The user plays a simple game


<<<<<<< HEAD
login-exercise
==============

This is just an exercise. Below are the requirements to implement.

Feature: As an anonymous user I want to create an account
  Sucessfull Scenario should return SUCESS
  Failed Scenario should return FAIL
  Username should be unique
  Password should have min-length 8
  Password should have upper and lower case characters
  Password should not exceed 10 characters

Feature: As a user I want log into the application
  Sucessfull Scenario should return WELCOME
  Failed Scenario should return FAIL
=======
rate-me
=======

#. exec: bundle install (install dependencies)
#. exec: bundle exec rake db:migrate (create database)
#. write new feature
#. exec: bundle exec cucumber (run features)
#. update web_steps.rb
#. exec: bundle exec cucumber (run features)
#. update path.rb
#. exec: bundle exec cucumber (run features)
#. define application action in application.rb
#. exec: bundle exec unicorn (start the web server)
#. open browser an run the application

>>>>>>> 3d1e63fe65df7b679bd0d715567a20b509a8dae2

Feature: print feature

Scenario: hello world 

* print 'hello world'

Scenario: add

* def balance = 200
* def fee = 20
* def tax = 10

* print 'total amount is ' + (balance + fee + tax)
* print 'multiplication of number ' + (balance*fee*tax)
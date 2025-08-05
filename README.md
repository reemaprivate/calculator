For the project setup, 
1. **jruby-9.2.8.0** is used
2. need to install **rspec** gem using command
   `gem install rspec`

   
Tests can be executed as below:
1. tests executed with below command
      
    `rspec spec/calculator_spec.rb `
2. Execute ruby code with below command. In the add method provide your required input. For example in the below command it is **'1,3'**
   
   `jruby -r ./lib/calculator.rb -e "puts Calculator.new.add('1,3')"`

   
   Some examples are as listed below:
      
      a) `jruby -r ./lib/calculator.rb -e "puts Calculator.new.add([4,3])"
      
      Please pass string as input!
      `
      
      b) `jruby -r ./lib/calculator.rb -e "puts Calculator.new.add('-2')"
      
      negative numbers not allowed -2`
      
      c)`jruby -r ./lib/calculator.rb -e "puts Calculator.new.add('0,2')"
      
      2`
      
      d)`jruby -r ./lib/calculator.rb -e "puts Calculator.new.add('0,2\n4\n5,2')"
      
      13`
      
      e)`jruby -r ./lib/calculator.rb -e "puts Calculator.new.add('//#0#2\n4\n5#2')"
      
      13`
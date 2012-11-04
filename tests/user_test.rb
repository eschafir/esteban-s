require 'test/unit'
require_relative '../models/user.rb'

class UserTest < Test::Unit::TestCase

    def test_initialize_should_create_user_with_username_and_password

        # arrange
        username = "Nicolas"
        password = "Password"
        
        # act
        result =  User.new(username, password)

        # assert
        assert_equal(result.username,username)
        assert_equal(result.password,password)

    end


   def test_create_account_should_not_save_user_when_passwords_lenght_is_less_than_eight

        # arrange
        username = "Nicolas2"
        password = "Pass"
        
        # act
        begin
       User.new(username, password)
       rescue
       result = "FAIL"
       end
 
       # assert
       assert_equal("FAIL", result)
   end

   def test_create_account_should_not_save_user_when_passwords_exceeds_ten_characters

        # arrange
        username = "Nicolas3"
        password = "TheBigPass!!!"
        
        # act
       begin
       User.new(username, password)
       rescue
       result = "FAIL"
       end
 
       # assert
       assert_equal("FAIL", result)

   end

end

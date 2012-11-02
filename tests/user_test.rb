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


end

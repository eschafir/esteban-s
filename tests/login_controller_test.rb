require 'test/unit'
require 'mocha'
require '../controllers/login_controller.rb'

class LoginControllerTest < Test::Unit::TestCase

    def test_create_account_should_save_user_when_unique

        # arrange
        username = "Nicolas"
        password = "Password!"
        password_confirmation = "Password!"
        user_repository = mock()
        user_repository.expects(:get_by_username).returns(nil)
        user_repository.expects(:save)

        controller = LoginController.new(user_repository)
        
        # act
        result =  controller.create_account(username, password, password_confirmation)

        # assert
        assert_equal("SUCCESS", result)
    end


    def test_create_account_should_not_save_user_when_duplicated

        # arrange
        username = "Nicolas"
        password = "Password!"
        password_confirmation = "Password!"
        user_repository = mock()
        user_repository.expects(:get_by_username).returns(true)

        controller = LoginController.new(user_repository)
        
        # act
        result =  controller.create_account(username, password, password_confirmation)

        # assert
        assert_equal("FAIL", result)
    end

    def test_create_account_should_not_save_user_when_passwords_not_match

        # arrange
        username = "Nicolas"
        password = "Password!"
        password_confirmation = "zaraza"

        controller = LoginController.new(nil)
        
        # act
        result =  controller.create_account(username, password, password_confirmation)

        # assert
        assert_equal("FAIL", result)
    end

    def test_create_account_should_not_save_user_when_passwords_lenght_is_less_than_eight

        # arrange
        username = "Nicolas"
        password = "Pass"
        password_confirmation = "Pass"

        controller = LoginController.new(nil)
        
        # act
        result =  controller.create_account(username, password, password_confirmation)

        # assert
        assert_equal("FAIL", result)
    end

    def test_create_account_should_not_save_user_when_passwords_exceeds_ten_characters

        # arrange
        username = "Nicolas"
        password = "TheBigPass!!!"
        password_confirmation = "TheBigPass!!!"

        controller = LoginController.new(nil)
        
        # act
        result =  controller.create_account(username, password, password_confirmation)

        # assert
        assert_equal("FAIL", result)
    end
end


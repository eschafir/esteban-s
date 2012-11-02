require_relative '../models/user.rb'

class LoginController

    def initialize(user_repository)
        @user_repository = user_repository
    end

    def create_account(username, password, password_confirmation)

        return "FAIL" if (password != password_confirmation)

        return "FAIL" if (password.size() < 8 || password.size() > 10)

        
        user = @user_repository.get_by_username(username)
        
        if(user.nil?)
            user = User.new(username, password)
            @user_repository.save(user)
            return "SUCCESS"

        end
        return "FAIL"
    end

end

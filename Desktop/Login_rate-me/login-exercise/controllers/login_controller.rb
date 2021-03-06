require_relative '../models/user.rb'

class LoginController

    def initialize(user_repository)
        @user_repository = user_repository
    end

    def create_account(username, password, password_confirmation)

        return "FAIL" if (password != password_confirmation)
        
        user = @user_repository.get_by_username(username)
        
        if(user.nil?)
            user = User.new(username, password)
            @user_repository.save(user)
            return "SUCCESS"

        end
        return "FAIL"
    end

    def log_in(username, password)

        user = @user_repository.get_by_username(username)
    
       if(user.nil?)
          then return "FAIL"
       else if user.password == password
                then  return "WELCOME"
             else return "FAIL"
             end
       end
   end

end

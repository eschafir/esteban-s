class User

    def initialize(username, password)
        
        @username = username
        @password = password  

	if(password.size() < 8  || password.size() > 10)
          then raise "The password should be bigger than 8 characters and smaller than 10"
	end
  
    end

    def username
        return @username
    end

    def password
        return @password
    end
end

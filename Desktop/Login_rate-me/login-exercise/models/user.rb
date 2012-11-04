class User

   def initialize(username, password)
          
       if(password.size() < 8  || password.size() > 10)
          then raise "The password size should be bigger than 8 characters and smaller than 10 characters"
       else if password =~ /[A-Z]/ and password =~ /[a-z]/
               then 
                    @username = username
                   @password = password
            else raise "The password must have characters in lower and uppercase"
            end
       end  
   end

    def username
        return @username
    end

    def password
        return @password
    end
end

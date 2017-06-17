class User 
    attr_accessor :email, :password, :provider, :uid
    def initialize
        @email = "ccsg@cin.ufpe.br"
        @password = "123456"
        @provider = "Facebook"
        @uid = "12345"
    end
end
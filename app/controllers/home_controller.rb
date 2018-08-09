class HomeController < ApplicationController

    def index
    @crypto = Crypto.all
    @post = Crypto.new
    end
    
    def search
    end
end

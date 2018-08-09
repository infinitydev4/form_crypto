class HomeController < ApplicationController

    def index
    @post = Crypto.new
    @crypto = Crypto.all
    end

    def search
    end
end

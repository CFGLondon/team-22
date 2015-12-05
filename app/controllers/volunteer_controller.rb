class VolunteerController < ApplicationController

    def new
        @volunteer = User.new
    end

    def create
        puts params
        render 'show'
    end 

    def home
    end 

    def profile
    end

    def reviews
    end

    def settings
    end

    def schedule
    end 

end

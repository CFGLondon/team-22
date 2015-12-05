class VolunteerController < ApplicationController

    def new
        @volunteer = User.new
    end

    def create
        puts params
        render 'show'
    end 

    def home
        @schedule = Schedule.find( volunteer_id: 1 )
        @user  = User.find(user_id:2)
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

class VolunteerController < ApplicationController

    def new
        @volunteer = User.new
    end

    def login
        puts params 
        render 'home'
    end

    def create
        puts params
        @volunteer = User.create!(
                    name: params[:name],
                    password: params[:password],
                    avaliability_date: params[:avaliability_date],
                    phone: params[:phone],
                    gender: params[:gender],
                    referee_name: params[:referee_name],
                    refree_email: params[:refree_email],
                    referee_description: params[:referee_description]
                    )
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

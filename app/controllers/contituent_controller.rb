class ContituentController < ApplicationController

    def new
        @contituent = User.new
    end

    def create
        @constituent = User.create!(
                    name: params[:name],
                    password: params[:password],
                    avaliability_date: params[:avaliability_date],
                    phone: params[:phone],
                    gender: params[:gender],
                    referee_name: params[:referee_name],
                    refree_email: params[:refree_email],
                    referee_description: params[:referee_description]
                    )
        redirect_to '/contituent/register'
    end 

    def home
        @user = User.where(email: params[:email])
        puts @user
        render 'home'
    end 

    def login
        puts params
        @user = User.where(email: params[:email])
        puts @user
        render 'home'
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

class ScoresController < ApplicationController

    def index
        @scores = Score.all
        render json: @scores
    end 

    def create
        # binding.pry
        score = Score.new(score_params)
        if score.save
            render json: score
        else 
            render :json => {:error => score.errors}
        end 
    end 

    private

    def score_params
        params.permit(:name, :score)
    end 
    
end

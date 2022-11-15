class JokesController < ApplicationController
    before_action :find_joke, only: [:show, :edit, :update, :destroy]
    
    def index 
        @jokes = Joke.all
    end

    def show 
    end

    def new 
        @joke = Joke.new
    end

    def create
        @joke = Joke.new(joke_params)
        @joke.save
        
        redirect_to joke_path(@joke)
    end

    def edit 
    end

    def update 
        @joke.update(joke_params)

        redirect_to joke_path(@joke)
    end

    def destroy 
        @joke.destroy
        
        redirect_to jokes_path
    end
    
    private 

    def find_joke 
        @joke = Joke.find(params[:id])
    end

    def joke_params 
        params.require(:joke).permit(:content, :rating)
    end
end

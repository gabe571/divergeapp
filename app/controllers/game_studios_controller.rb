class GameStudiosController < ApplicationController
    def show
        @game_studio = GameStudio.find(params[:id])
    end

end

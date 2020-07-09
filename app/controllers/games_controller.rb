class GamesController < ApplicationController
    def show
        @game = Game.find(params[:id])
    end

private

def game_params
    params.require(:game).permit(:title, :release_date, :game_studios_id)
end
end
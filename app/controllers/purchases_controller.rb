class PurchasesController < ApplicationController

    def index
        @purchases = Purchase.all
        @reviews = Review.all
    end

    def show
        @purchase = Purchase.find(params[:id])
        session[:purchase_id] = @purchase.id
    end

    def create
        @purchase = Purchase.new(params[:review])
            if @review.save
                redirect_to reviews_path
        else
            render "new"
            end
        end

    def edit
        @purchase = Purchase.find(params[:id])
    end
    
    def update
        @purchase = Purchase.find(params[:id])
       redirect_to reviews_path
     end

     private 

     def purchase_params
        params.require(:purchase).permit( :game_id, :user_id, :purchase_id)
     end
  end

   


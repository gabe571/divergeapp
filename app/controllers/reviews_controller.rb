class ReviewsController < ApplicationController
   

    def index
        @reviews = Review.all
        @purchases = Purchase.all
    end

    def show
    @review = Review.find(params[:id])
    end

    def new
        @review = Review.new
        @purchase_id = session[:purchase_id]
    end


    def create
        @review = Review.new(review_params)
       if  @review.save
         redirect_to purchase_path(@review.purchase_id)
        else
            flash[:alert] = "Review Did Not Post"
            render :new
        end
    end

    def edit
        @review = Review.find(params[:id])
    end

    def update
        @review = Review.find(params[:id])
        if @review.update(review_params)
            redirect_to purchase_path(@review.purchase_id)
        else
            flash[:error] 
            render :edit
        end
    end


def destroy
   @review = Review.destroy(params[:id])
    redirect_to purchase_path(@review.purchase_id)
end

private 

def review_params
    params.require(:review).permit(:reviewed_game, :rating, :purchase_id)
end
end
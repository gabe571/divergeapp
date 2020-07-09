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
    end


    def create
        @review = Review.new(review_params)
       if  @review.save
            redirect_to reviews_path
        else
            flash[:alert] = "Review Did Not Post"
            render :new
        end
    end

    # def edit

    # end

    def update
        @review = Review.find(params[:id])
        review.update
        redirect_to reviews_path
    end
   
def destroy
   @review = Review.destroy(params[:id])
    redirect_to reviews_path
end

private 

def review_params
    params.require(:review).permit(:reviewed_game, :rating, :purchase_id)
end
end
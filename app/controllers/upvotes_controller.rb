class UpvotesController < ApplicationController


  def create
    @upvote = Upvote.new(user_id: current_user.id, product_id: params[:product_id])
    #@upvote.user_id = current_user.id
    #@upvote.product_id = 14
    @upvote.save
    redirect_to products_path

    #params[:product_id]

    # product = Product.find( params[:product_id] )
    # product.upvotes.create! user: current_user
    # redirect_to products_path
  end

  def destroy
    upvote = Upvote.find(params[:id])
    upvote.destroy
    redirect_to products_path

    # if @product.upvote.destroy
    # then redirect_to products_path
    # else render flash[:alert] = "Impossible de supprimer"
    # end

  end


  # private
  # def upvote_params
  # params.require(:upvote).permit(:user_id, :product_id)
  # end

end

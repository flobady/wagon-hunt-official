class UpvotesController < ApplicationController


  def create
    @product = Product.find( params[:product_id] )
    @product.upvotes.create! user: current_user

    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end

    # autre méthode pour insérer data en base (méthode Floflo)
    #@upvote = Upvote.new(user_id: current_user.id, product_id: params[:product_id])
    #@upvote.save

  end

  def destroy
    upvote = Upvote.find(params[:id])
    @product = upvote.product
    upvote.destroy
    respond_to do |format|
      format.html {redirect_to products_path}
      format.js
    end

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

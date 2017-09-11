class User < ApplicationRecord
  has_attachment :avatar
  has_many :products
  has_many :upvotes
  has_many :messages

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def voted_for?(product)
    #  if Upvote.where(product_id: product.id).where(user_id: current_user.id).any?
    if Upvote.where("product_id = ? AND user_id = ?", product.id, self.id).any?
       return true
     else
      return false
     end

#product.upvotes.where(user: self).any?

  end

end

class Book < ApplicationRecord
  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}

  belongs_to :user
  
  has_many :book_comments, dependent: :destroy
  
  has_many :favorites, dependent: :destroy
  
  def self.search(keyword)
  where(["title like? OR body like?", "%#{keyword}%", "%#{keyword}%"])
 end


  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end
end

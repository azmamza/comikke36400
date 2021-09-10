class Post < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :name
    validates :rating, numericality: { less_than_or_equal_to: 5, greater_than_or_equal_to: 1 }
  end

  validates :genre_id, numericality: { other_than: 1, message: "can't be blank" }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :genre

  # def self.search(search)
  #   if search != ''
  #     Post.where('text LIKE(?)', "%#{search}%")
  #   else
  #     Post.all
  #   end
  # end
end

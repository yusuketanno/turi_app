class Info < ApplicationRecord

  belongs_to :user
  has_many :comments
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :fish_name
    validates :text
    validates :tackle
    validates :bait
  end

end

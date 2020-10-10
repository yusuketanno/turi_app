class Info < ApplicationRecord

  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :image
    validates :fish_name
    validates :text
    validates :tackle
    validates :fish_num
  end

end

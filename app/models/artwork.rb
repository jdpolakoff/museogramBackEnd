class Artwork < ApplicationRecord

  belongs_to :museum
  has_many :reviews

end

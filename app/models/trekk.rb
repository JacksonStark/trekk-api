class Trekk < ApplicationRecord
  has_many :markers, :dependent => :destroy
  belongs_to :user
end

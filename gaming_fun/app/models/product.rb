class Product < ApplicationRecord

    belongs_to :maker
    belongs_to :category
    has_many :reviews

    validates :name, presence: true
    validates :name, length: {maximum: 30}
end

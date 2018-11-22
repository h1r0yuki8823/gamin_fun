class Product < ApplicationRecord

    belongs_to :maker

    validates :name, presence: true
    validates :name, length: {maximum: 30}
end

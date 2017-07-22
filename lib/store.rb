class Store < ActiveRecord::Base
    has_many :stocks
    has_many :brands, through: :stocks
end
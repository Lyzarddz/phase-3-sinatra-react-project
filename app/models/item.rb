class Item < ActiveRecord::Base 
    belongs_to :list

    validates :name, presence: true
    validates :name, uniqueness: true

end
class Item < ActiveRecord::Base 
    belongs_to :beach_list
    belongs_to :mountain_list

    validates :name, presence: true, uniqueness: true
end 
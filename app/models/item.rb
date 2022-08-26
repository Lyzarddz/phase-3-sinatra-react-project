class Item < ActiveRecord::Base 
    belongs_to :beach_list
    belongs_to :mountain_list
end 
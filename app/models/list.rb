class List < ActiveRecord::Base
    belongs_to :user
    has_many :tasks
    
    has_many :favorite_lists
    has_many :favorited_by, through: :favorite_lists, source: :user
end

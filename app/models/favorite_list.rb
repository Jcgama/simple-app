class FavoriteList < ActiveRecord::Base
    belongs_to :list
    belongs_to :user
end

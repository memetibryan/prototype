class StoresShoe < ActiveRecord::Base
    belongs_to :brand
    belongs_to :shoe
end
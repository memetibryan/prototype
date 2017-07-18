class Store < ActiveRecord::Base
	has_many(:brands) #creating many to many relationship
end
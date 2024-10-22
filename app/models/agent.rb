class Agent < ApplicationRecord
   has_many :properties
   has_one_attached :photo
 
   validates :name, presence: true
   validates :contact_information, presence: true
end

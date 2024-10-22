class Property < ApplicationRecord
  belongs_to :agent  # This line establishes the relationship

  has_many_attached :images
  # Add other property-related validations and associations as needed
end

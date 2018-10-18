class User < ApplicationRecord
  belongs_to :organizationable, polymorphic: true
  has_one_attached :avatar
end

class User < ApplicationRecord
  belongs_to :organizationable, polymorphic: true
end

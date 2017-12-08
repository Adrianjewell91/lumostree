class Directory < ApplicationRecord
  validates :directory, :name, presence:true
end

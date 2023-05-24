class Search < ApplicationRecord
  has_many :jobs, dependent: :destroy
  belongs_to :user
end

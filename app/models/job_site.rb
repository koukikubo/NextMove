class JobSite < ApplicationRecord
  has_many :searches
  has_many :jobs, through: :searches
  belongs_to :site_type
end

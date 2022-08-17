class JobApply <  ActiveRecord::Base
  belongs_to :companies
  has_many :users
end

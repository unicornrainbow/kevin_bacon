class Billing < ActiveRecord::Base
  belongs_to :actor
  belongs_to :movie
  # attr_accessible :title, :body
end

class Dependency < ActiveRecord::Base
  belongs_to :Delegation
  has_many	:powers
end

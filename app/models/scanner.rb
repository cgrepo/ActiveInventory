class Scanner < ActiveRecord::Base
  belongs_to :Delegation
  belongs_to :Dependency
  belongs_to :Network
  #change to be commited 4 heroku
end

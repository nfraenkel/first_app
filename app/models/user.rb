class User < ActiveRecord::Base
  attr_accessible :email, :first, :hometown, :last
end

class User < ActiveRecord::Base
  validates_uniqueness_of :name, :email		# Comfirms validity of username and password

  def to_json
    super(:except => :password)
  end
end
class User < ActiveRecord::Base
  has_secure_password

  enum role: ["defaults", "admin"]  #%w(default admin)

  #enum gives you the below 2 methods -- behind the scenes


  # def admin?
  #   role == 1
  # end

  # def default?
  #   role == 0
  # end



end

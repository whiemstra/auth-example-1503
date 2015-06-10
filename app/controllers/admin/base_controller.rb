class Admin::BaseController < ApplicationController  # inherits all this good stuff, but has the Admin barrier

  before_action :require_admin #10 - error: undefined method `require_admin' -- defined below

  def require_admin
    render file: '/public/404' unless current_admin?   #11 - undefined current_admin? -- def in application_controller
  end
end


#6 -- error of The action 'index' could not be found for Admin::CategoriesController -- def index in cat_controller

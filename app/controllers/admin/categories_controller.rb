class Admin::CategoriesController < Admin::BaseController   #your putting the BaseController in the admin folder

  def index   #7 -- Error: missing template in views create "admin/categories/index,"

  end
end

#5 - error of: uninitialized constant Admin::BaseController -- add base_controller.rb in admin folder

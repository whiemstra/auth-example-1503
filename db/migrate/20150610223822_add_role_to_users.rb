class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, default: 0   #2 - Ran rails g migration AddRoleToUsers, added default: 0, rake db:migrate, ran tests
  end
end


#3 - Error: undefined method `any_instance' -- need to add mocha gem and require it in test helper.
#4 - Get error: undefined local variable or method `admin_categories_path'. Go to routes and namespace


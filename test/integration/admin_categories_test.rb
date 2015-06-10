require 'test_helper'

class AdminCategoriesTest < ActionDispatch::IntegrationTest
  test "default user cannot see admin categories page" do
    user = User.create(username: "Whitney",
                       password: "hello123",
                       role: 0)
    ApplicationController.any_instance.stubs(:current_user).returns(user)  #we use the ApplicationController b/c that's where we defined a current_user

    visit admin_categories_path #what is this user trying to do...

    refute page.has_content?("All Categories")
    assert page.has_content?("The page you were looking for doesn't exist.")
  end

  #1 - run tests, error of: unknown attribute role

end

require 'application_system_test_case'

class NavigationTest < ApplicationSystemTestCase
  test "home" do
    visit '/'
    assert_text "Posts"
  end

  test "create post" do
    visit '/posts'
    click_link 'New Post'
    fill_in :post_title, with: 'My new post'
    click_button 'Create Post'
    assert_text 'My new post'
  end
end


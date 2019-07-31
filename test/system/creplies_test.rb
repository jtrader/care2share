require "application_system_test_case"

class CrepliesTest < ApplicationSystemTestCase
  setup do
    @creply = creplies(:one)
  end

  test "visiting the index" do
    visit creplies_url
    assert_selector "h1", text: "Creplies"
  end

  test "creating a Creply" do
    visit creplies_url
    click_on "New Creply"

    fill_in "Comment", with: @creply.comment_id
    fill_in "Text", with: @creply.text
    fill_in "User", with: @creply.user_id
    click_on "Create Creply"

    assert_text "Creply was successfully created"
    click_on "Back"
  end

  test "updating a Creply" do
    visit creplies_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @creply.comment_id
    fill_in "Text", with: @creply.text
    fill_in "User", with: @creply.user_id
    click_on "Update Creply"

    assert_text "Creply was successfully updated"
    click_on "Back"
  end

  test "destroying a Creply" do
    visit creplies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Creply was successfully destroyed"
  end
end

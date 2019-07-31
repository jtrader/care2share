require "application_system_test_case"

class RrepliesTest < ApplicationSystemTestCase
  setup do
    @rreply = rreplies(:one)
  end

  test "visiting the index" do
    visit rreplies_url
    assert_selector "h1", text: "Rreplies"
  end

  test "creating a Rreply" do
    visit rreplies_url
    click_on "New Rreply"

    fill_in "Relpy", with: @rreply.relpy_id
    fill_in "Text", with: @rreply.text
    fill_in "User", with: @rreply.user_id
    click_on "Create Rreply"

    assert_text "Rreply was successfully created"
    click_on "Back"
  end

  test "updating a Rreply" do
    visit rreplies_url
    click_on "Edit", match: :first

    fill_in "Relpy", with: @rreply.relpy_id
    fill_in "Text", with: @rreply.text
    fill_in "User", with: @rreply.user_id
    click_on "Update Rreply"

    assert_text "Rreply was successfully updated"
    click_on "Back"
  end

  test "destroying a Rreply" do
    visit rreplies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rreply was successfully destroyed"
  end
end

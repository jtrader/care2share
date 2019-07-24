require "application_system_test_case"

class LengthsTest < ApplicationSystemTestCase
  setup do
    @length = lengths(:one)
  end

  test "visiting the index" do
    visit lengths_url
    assert_selector "h1", text: "Lengths"
  end

  test "creating a Length" do
    visit lengths_url
    click_on "New Length"

    fill_in "Length", with: @length.length
    fill_in "Reference", with: @length.reference
    click_on "Create Length"

    assert_text "Length was successfully created"
    click_on "Back"
  end

  test "updating a Length" do
    visit lengths_url
    click_on "Edit", match: :first

    fill_in "Length", with: @length.length
    fill_in "Reference", with: @length.reference
    click_on "Update Length"

    assert_text "Length was successfully updated"
    click_on "Back"
  end

  test "destroying a Length" do
    visit lengths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Length was successfully destroyed"
  end
end

require "application_system_test_case"

class MotorhomesTest < ApplicationSystemTestCase
  setup do
    @motorhome = motorhomes(:one)
  end

  test "visiting the index" do
    visit motorhomes_url
    assert_selector "h1", text: "Motorhomes"
  end

  test "creating a Motorhome" do
    visit motorhomes_url
    click_on "New Motorhome"

    fill_in "Make", with: @motorhome.make
    fill_in "Model", with: @motorhome.model
    click_on "Create Motorhome"

    assert_text "Motorhome was successfully created"
    click_on "Back"
  end

  test "updating a Motorhome" do
    visit motorhomes_url
    click_on "Edit", match: :first

    fill_in "Make", with: @motorhome.make
    fill_in "Model", with: @motorhome.model
    click_on "Update Motorhome"

    assert_text "Motorhome was successfully updated"
    click_on "Back"
  end

  test "destroying a Motorhome" do
    visit motorhomes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Motorhome was successfully destroyed"
  end
end

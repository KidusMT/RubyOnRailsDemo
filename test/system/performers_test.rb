require "application_system_test_case"

class PerformersTest < ApplicationSystemTestCase
  setup do
    @performer = performers(:one)
  end

  test "visiting the index" do
    visit performers_url
    assert_selector "h1", text: "Performers"
  end

  test "creating a Performer" do
    visit performers_url
    click_on "New Performer"

    fill_in "Email", with: @performer.email
    fill_in "Name", with: @performer.name
    fill_in "Telephone", with: @performer.telephone
    click_on "Create Performer"

    assert_text "Performer was successfully created"
    click_on "Back"
  end

  test "updating a Performer" do
    visit performers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @performer.email
    fill_in "Name", with: @performer.name
    fill_in "Telephone", with: @performer.telephone
    click_on "Update Performer"

    assert_text "Performer was successfully updated"
    click_on "Back"
  end

  test "destroying a Performer" do
    visit performers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Performer was successfully destroyed"
  end
end

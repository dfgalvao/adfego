require "application_system_test_case"

class PreachesTest < ApplicationSystemTestCase
  setup do
    @preach = preaches(:one)
  end

  test "visiting the index" do
    visit preaches_url
    assert_selector "h1", text: "Preaches"
  end

  test "creating a Preach" do
    visit preaches_url
    click_on "New Preach"

    fill_in "Publication", with: @preach.publication
    fill_in "Status", with: @preach.status
    fill_in "Subject", with: @preach.subject
    fill_in "Title", with: @preach.title
    click_on "Create Preach"

    assert_text "Preach was successfully created"
    click_on "Back"
  end

  test "updating a Preach" do
    visit preaches_url
    click_on "Edit", match: :first

    fill_in "Publication", with: @preach.publication
    fill_in "Status", with: @preach.status
    fill_in "Subject", with: @preach.subject
    fill_in "Title", with: @preach.title
    click_on "Update Preach"

    assert_text "Preach was successfully updated"
    click_on "Back"
  end

  test "destroying a Preach" do
    visit preaches_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Preach was successfully destroyed"
  end
end

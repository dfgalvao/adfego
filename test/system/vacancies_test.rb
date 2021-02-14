require "application_system_test_case"

class VacanciesTest < ApplicationSystemTestCase
  setup do
    @vacancy = vacancies(:one)
  end

  test "visiting the index" do
    visit vacancies_url
    assert_selector "h1", text: "Vacancies"
  end

  test "creating a Vacancy" do
    visit vacancies_url
    click_on "New Vacancy"

    fill_in "Benefit", with: @vacancy.benefit
    fill_in "Code", with: @vacancy.code
    fill_in "Company", with: @vacancy.company_id
    fill_in "Description", with: @vacancy.description
    fill_in "Quantity", with: @vacancy.quantity
    fill_in "Remuneration", with: @vacancy.remuneration
    fill_in "Schooling", with: @vacancy.schooling
    fill_in "Title", with: @vacancy.title
    fill_in "Workload", with: @vacancy.workload
    click_on "Create Vacancy"

    assert_text "Vacancy was successfully created"
    click_on "Back"
  end

  test "updating a Vacancy" do
    visit vacancies_url
    click_on "Edit", match: :first

    fill_in "Benefit", with: @vacancy.benefit
    fill_in "Code", with: @vacancy.code
    fill_in "Company", with: @vacancy.company_id
    fill_in "Description", with: @vacancy.description
    fill_in "Quantity", with: @vacancy.quantity
    fill_in "Remuneration", with: @vacancy.remuneration
    fill_in "Schooling", with: @vacancy.schooling
    fill_in "Title", with: @vacancy.title
    fill_in "Workload", with: @vacancy.workload
    click_on "Update Vacancy"

    assert_text "Vacancy was successfully updated"
    click_on "Back"
  end

  test "destroying a Vacancy" do
    visit vacancies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vacancy was successfully destroyed"
  end
end
